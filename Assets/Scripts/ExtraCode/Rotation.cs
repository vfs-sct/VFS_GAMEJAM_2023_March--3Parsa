using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rotation : MonoBehaviour
{
    /// <summary>
    /// Spins object.
    /// </summary>
    public float xSpinn;
    public float ySpinn;
    public float zSpinn;

    // Update is called once per frame
    void Update()
    {
        transform.Rotate(xSpinn, ySpinn, zSpinn * Time.deltaTime);
    }
}
