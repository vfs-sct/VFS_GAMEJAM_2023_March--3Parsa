using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class DeathWithFall : MonoBehaviour
{
    public int scene;
    public float floorLevelDeath = -10;

    /// <summary>
    /// If the player reaches the asssigned floor level.
    /// </summary>
    void Update()
    {
        if (transform.position.y <= floorLevelDeath)     // Checks if position is <= than defined floor level
        {
            Debug.Log("Replace with line below.");
            // SceneManager.LoadScene(scene);
        }
    }
}

// Make player state for isALive to summarize all death scripts and mechanics
