using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Score : MonoBehaviour
{
    /// <summary>
    /// Displays served Clients. Attach to UI.
    /// </summary>
    public static int ClientScoreText = 3;
    public bool scoreReset = false;

    Text score;

    void Start()
    {
        score = GetComponent<Text>();
    }

    void Update()
    {
        score.text = "Client: " + ClientScoreText; // display score

        if (scoreReset == true)
        {
            ClientScoreText = 0;
        }
    }
}
