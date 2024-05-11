using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using SnowXR.MassInjury.Player;
using SnowXR.MassInjury.Person;

namespace SnowXR.MassInjury
{
    public class PoliceDialogue : MonoBehaviour
    {
        [Header("Set in Inspector")]
        [SerializeField] private AudioClip easy;
        [SerializeField] private AudioClip meduim;
        [SerializeField] private AudioClip hard;
        [Tooltip("Find the Central Eye in XR Rig Advanced MassInjury")]
        [SerializeField] private Transform playerEye;

        private NavMeshAgent agent;
        private AudioSource source;
        private Animator animator;
        private Vector3 startPos;
        private bool played = false;
        private float timer = 0f;
        private void Awake()
        {
            agent = GetComponent<NavMeshAgent>();
            source = GetComponent<AudioSource>();
        }

        private void Start()
        {
            StartCoroutine(GoToPlayer());
            animator = GetComponent<GenderComponent>().GetMesh().GetComponent<Animator>();
            animator.SetBool("canStand", true);
            animator.SetBool("Concious", true);
        }

        IEnumerator GoToPlayer()
        {
            yield return new WaitForSeconds(3);
            agent.SetDestination(FindDestination());
            startPos = transform.position;
            NavMeshHit hit;
            if (NavMesh.SamplePosition(startPos, out hit, 3f, 1 << 3))
            {
                startPos = hit.position;
            }
        }

        // Update is called once per frame
        void Update()
        {
            animator.SetBool("walking", agent.velocity.magnitude > 0f);
            if (source.clip != null)
            {
                if (source.clip.length < source.time + 0.2f)
                {
                    agent.SetDestination(startPos);
                    source.clip = null;
                }
            }

            if (agent.hasPath && !played && !source.isPlaying)
            {
                timer += Time.deltaTime;
                if (timer > 7.5f)
                {
                    agent.SetDestination(startPos);
                    return;
                }

                if (Vector3.Distance(playerEye.position, agent.destination) > 1.5f)
                {
                    agent.SetDestination(FindDestination());
                }
                if (Vector3.Distance(transform.position, agent.destination) < 0.5f)
                {
                    Vector3 direction = playerEye.position - transform.position;
                    direction.y = 0f;

                    transform.rotation = Quaternion.LookRotation(direction.normalized);
                    PlayAudio();
                }
            }
        }


        private void PlayAudio()
        {
            if (played) return;
            switch (SpawnManager.instance.Difficulty())
            {
                case GameDifficulty.Easy:
                    source.clip = easy;
                    break;
                case GameDifficulty.Medium:
                    source.clip = meduim;
                    break;
                case GameDifficulty.Hard:
                    source.clip = hard;
                    break;
                case GameDifficulty.VeryHard:
                    source.clip = hard;
                    break;
            }

            source.Play();
            played = true;
        }
        private Vector3 FindDestination()
        {
            Vector3 destination = playerEye.transform.position;
            destination += playerEye.transform.forward * 3f;
            NavMeshHit hit;
            if (NavMesh.SamplePosition(destination, out hit, 3f, 1 << 3))
            {
                return hit.position;
            }

            return destination;
        }
    }
}
