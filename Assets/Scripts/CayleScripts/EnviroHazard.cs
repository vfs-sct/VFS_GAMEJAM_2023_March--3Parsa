using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnviroHazard : MonoBehaviour
{
    public int scene;

    /// <summary>
    /// Player dies if touches this hazard.
    /// </summary>
    /// <param name="collider"></param>
    private void OnTriggerEnter(Collider collider)
    {
        if (collider.gameObject.tag == "Player")
        {
            Debug.Log("Replace with line below.");
            // SceneManager.LoadScene(scene);
        }
    }
}

// Make player state for isALive to summarize all death scripts and mechanics
