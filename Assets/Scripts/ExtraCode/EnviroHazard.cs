using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnviroHazard : MonoBehaviour
{
    // public int scene;
    public GameObject deathObj;
    public GameObject playerObj;

    /// <summary>
    /// Player dies if touches this hazard.
    /// </summary>
    /// <param name="collider"></param>
    private void OnTriggerEnter(Collider collider)
    {
        if (collider.gameObject.tag == "Finish")
        {
            playerObj.SetActive(false);
            deathObj.SetActive(true);
            // SceneManager.LoadScene(scene);
        }
    }
}

// Make player state for isALive to summarize all death scripts and mechanics
