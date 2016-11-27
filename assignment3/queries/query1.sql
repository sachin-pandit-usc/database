tree = TinkerGraph.open()

graph_v1 = tree.addVertex(id, "CS420", label, "CS420")
graph_v2 = tree.addVertex(id, "CS681", label, "CS681")
graph_v3 = tree.addVertex(id, "CS526", label, "CS526")
graph_v4 = tree.addVertex(id, "CS400", label, "CS400")
graph_v5 = tree.addVertex(id, "CS220", label, "CS220")
graph_v6 = tree.addVertex(id, "CS334", label, "CS334")
graph_v7 = tree.addVertex(id, "CS201", label, "CS201")
graph_v8 = tree.addVertex(id, "CS101", label, "CS101")


graph_v1.addEdge ("prerequisite", graph_v5, id, "v1_v5")
graph_v1.addEdge ("corequisite", graph_v5, id, "v1_v1_")
graph_v2.addEdge ("prerequisite", graph_v6, id, "v2_v6")
graph_v3.addEdge ("prerequisite", graph_v4, id, "v3_v4")
graph_v3.addEdge ("corequisite", graph_v4, id, "v3_v4_")
graph_v4.addEdge ("prerequisite", graph_v6, id, "v4_v6")
graph_v5.addEdge ("prerequisite", graph_v7, id, "v5_v7")
graph_v6.addEdge ("prerequisite", graph_v7, id, "v6_v7")
graph_v7.addEdge ("prerequisite", graph_v8, id, "v7_v8")



/* Query1 */
g = tree.traversal()

/* Query1 Explanation:
The basic idea here is to create a tinkerpop graph, and using the instance of that graph we need to add 8 vertices and 9 edges. Following is the step-by-step explanation of each command.

Step1: We first create a graph instance named "tree" using the command TinkerGraph.open()

Step2: We add the vertex to the graph using the command "addVertex" with reserved keywords "id" and "label". 'id' is used to unique identify a particular node.

Step3: We add an edge between the vertex using the command "addEdge". Label of the edge is a key part while adding the edge as it acts as a signature of a particular edge. Two label used in my queries are "prerequisite" and "corequisite"

Final step: we create a traversal source in order to iterate the nodes in the graph to display number of vertex and edges created
*/



/* Query2 */
g.V().as('group1').in('corequisite').as('group2').out('prerequisite').select('group1','group2')

/*Query2 Explanation:
The basic idea here is to detect all the doubly-connected nodes. We can achieve this by finding the set of nodes which are 

/* Query3 */
g.V('CS526').repeat(out('prerequisite').dedup()).emit()

/* Query4 */
g.V('CS101').repeat(__.in()).emit().path().count(local).max()

