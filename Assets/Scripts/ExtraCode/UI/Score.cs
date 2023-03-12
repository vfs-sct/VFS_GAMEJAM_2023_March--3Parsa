using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

// Should be named as ClientCollector... it's fine for now.
public class Score : MonoBehaviour
{
    /// <summary>
    /// Displays served Clients. Attach to UI.
    /// </summary>
    public static int clientScoreText = 0;
    public bool scoreReset = false;

    Text score;

    void Start()
    {
        score = GetComponent<Text>();

        if (scoreReset == false && clientScoreText >= 1)
        {
            scoreReset = true;
            clientScoreText = 0;
        }
    }

    void Update()
    {
        score.text = "Clients: " + clientScoreText; // display score
    }
}
