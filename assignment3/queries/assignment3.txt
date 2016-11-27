/*******************************************************/
/* Query1 */

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

g = tree.traversal()

/* Query1 Explanation:
The basic idea here is to create a tinkerpop graph, and using the instance of that graph we need to add 8 vertices and 9 edges. Following is the step-by-step explanation of each command.

Step1: We first create a graph instance named "tree" using the command TinkerGraph.open()

Step2: We add the vertex to the graph using the command "addVertex" with reserved keywords "id" and "label". 'id' is used to unique identify a particular node.

Step3: We add an edge between the vertex using the command "addEdge". Label of the edge is a key part while adding the edge as it acts as a signature of a particular edge. Two label used in my queries are "prerequisite" and "corequisite"

Final step: we create a traversal source in order to iterate the nodes in the graph to display number of vertex and edges created*/
/*******************************************************/





/*******************************************************/
/* Query2 */
g.V().as('b').in('corequisite').as('a').out('prerequisite').select('a', 'b')

/* Query2 Explanation:
The basic idea here is to detect all the doubly-connected nodes. We can achieve this by grouping the set of nodes into two categories. In the category "b" we find all the nodes from which the edge "corequisite" emerges, and in another category "a" we find all the nodes which is end point of the edge "prerequisite", by doing this we get both end of the double-connected nodes.*/
/*******************************************************/






/*******************************************************/
/* Query3 */
/* Replace CS526 with required node */
g.V('CS526').repeat(out('prerequisite')).emit()

/* Query3 Explanation:
The basic idea here is to display all the ancestors of the given vertex. Query is to start with node CS526, and find out all the nodes reachable from the out edge "prerequisite", the same step is repeated for the explored nodes. This is achieved using repeat() command, which basically loops over a traversal from a given node. If emit() is placed after repeat(), it is evaluated on the traversers leaving the repeat-traversal. This is how we can display the nodes in ancestral chain */
/*******************************************************/






/*******************************************************/
/* Query4 */
/* Replace CS101 with required node */
g.V('CS101').repeat(__.in()).emit().path().count(local).max()

/* Query4 Explanation:
The basic idea here is to find maximum depth starting at a given node. This query creates an anonymous traversal to find out all the nodes associated with the incoming edge, and to repeatedly traverse the tree for explored nodes. This step is repeated until all the nodes in the graph is explored. Final outcome is to figure out maximum of all these recorded depths.
*/
/*******************************************************/
