using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class DeathWithFall : MonoBehaviour
{
    // public int scene;
    public float floorLevelDeath = -10;
    public GameObject deathObj;
    public GameObject playerObj;

    /// <summary>
    /// If the player reaches the asssigned floor level.
    /// </summary>
    void Update()
    {
        if (transform.position.y <= floorLevelDeath)     // Checks if position is <= than defined floor level
        {
            playerObj.SetActive(false);
            deathObj.SetActive(true);
            Debug.Log("You fell out of the world.");
            // SceneManager.LoadScene(scene);
        }
    }
}
