# Activity 1

```xml

<employeeList xlmns="urn:corp:list" >
   <personList xlmns:emp="urn:corp:emp" xlmns:dep="urn:corp:dep">
    <emp:empID>E0000001</emp:empID>
    <dep:name>Sales</dep:name>
    <name>John Smith</name>
  </list:personList>
 <list:personList>
    <emp:empID>E0000002</emp:empID>
    <dep:name>Development</dep:name>
    <name>Ichiro Tanaka</name>
  </list:personList>
<personList>
    <emp:empID>E0000003</emp:empID>
    <dep:name>Development</dep:name>
    <name>Jiro Suzuki</name>
  </list:personList>
 <personList>
    <emp:empID>E0000004</emp:empID>
    <dep:name>Administrative</dep:name>
    <name>Saburo Takahashi</name>
  </list:personList>
  </list:employeeList>
```

Resolve naming collision by adding namepsaces

- `employeeList` and `personList` - list schema
- `empId` and second `name` - employee schema
- first `name` - department schema

---

- list schema - urn:corp:list
- employee schema - urn:corp:emp
- department schema - urn:corp:dep

Save file as `module-3/asssignments/activity-1.xml`
