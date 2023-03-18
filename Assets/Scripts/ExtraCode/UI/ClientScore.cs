using UnityEngine;

public class ClientScore : MonoBehaviour
{
    /// <summary>
    /// Displays remaining Clients. Attach to object giving points.
    /// </summary>
    private static int clientScoreCount = 1;
    public GameObject clientObj;

    public GameObject playerObj;
    public GameObject winObj;

    private void OnTriggerEnter(Collider collider)
    {
        if (collider.gameObject.tag == "Player")
        {
            
            if (DrugColleector.drugScoreText >= 1)
            {
                DrugColleector.drugScoreText -= 1;
                Score.clientScoreText += clientScoreCount;
                clientObj.SetActive(false);
                Debug.Log("Sold the drug");

                if (Score.clientScoreText >= 3)
                {
                    playerObj.SetActive(false);
                    winObj.SetActive(true);
                    Debug.Log("You served all three clients!");
                }
            }
            else
            {
                Debug.Log("You do not have Drugs to give to the Client.");
            }
        }
    }
}
