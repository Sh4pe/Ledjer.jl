This document contains the architecture overview of Ledjer.

# Introduction and Goals

## Requirements Overview

### What is Ledjer?

* Ledjer is an interactive system to analyze your finances.
* It targets a technical audience that is comfortable using a Julia REPL.
* It can import transactions from banks and can provide reports and visualizations of these.

### Essential features

* Is extensible: input formats (like CSVs from new banks) and output artifacts (like repots, visualizations)
  can be added later on.
* For this, a kind of "plug-in system" is in place.
* It has flexible rules for classifying transactions can be added comfortably.
* Users can quickly debug rules they've added.
* It uses double-entry bookkeeping.
* It provides a thorough REPL interface. 
* It may also provide a web interface.

## Quality Goals

The quality goals of Ledjer will be classified using the software quality characteristics in ISO/IEC 25010.
They are shown in the following mindmap.

```@eval
run(`plantuml software_quality.pu -tsvg`)
nothing
```

![](software_quality.svg)

The following table contains the most important quality goals of Ledjer, routhly ordered by their 
importance. The category in brackets is the software quality characteristic mentioned above.

| Quality goal   | Motivation and explanation |
| ----------- |  -------------------- |
| Adaptable to new banks (Maintainability) | It is easy to implement readers for new CSV formats using plug-in system. |
| Easy to use (Usability) | The REPL interface is readily understood by able REPL users and the graphical interface can be learned by playing around with it.  |
| Ledjer is fast (Performance) | Reading CSVs and generating reports for it should be a breeze, even on older laptops. The web interface is snappy so that it is fun to use. |
| Robust data model (Reliability) | Users cannot skrew up the database, unless they directly mess with the input CSVs. |
| Minimal configuration (Usability) | Users need only supply a CSV data directory and a directory containing config files and Ledjer will work without problems. |

## Stakeholders

| Role/Name   | Contact                   | Expectations              |
| ----------- | ------------------------- | -------------------- |
| *<Role-1> | *<Contact-1>*           | *<Expectation-1>*       |
| *<Role-2> | *<Contact-2>*           | *<Expectation-2>*       |

# Architecture Constraints

## Technical constraints

| Constraint | Description, background |
| ---------- | ----------------------- |
| Written in Julia | Ledjer is written in Julia. After all, this is a hobby project and this language is most fun and effortless for the author. |
| Low hardware requirements | Initial development started in 2021 on a 2013 MacBook Pro. That must be enough. |
| Platform independance | Ledjer runs everywhere Julia runs - which is almost everywhere ;) |

## Organizational constraints

| Constraint | Description, background |
| ---------- | ----------------------- |
| Team | At the moment, only David Nies. Hopefully, some folks will join later on. |
| Open source | The repository and documentation will be on GitHub so that everyone interested can use it. |

## Conventions

tbd.

# System Scope and Context

## Business Context

```@eval
run(`plantuml business_context.pu -tsvg`)
nothing
```

![](business_context.svg)

**Human user**

...

**Bank (neighbour system)**

...

**Local computer (neighbour system)**

...

## Technical Context

```@eval
run(`plantuml technical_context.pu -tsvg`)
nothing
```

![](technical_context.svg)

**REPL**

...

**Browser**

...

**Local filesystem**

...


# Solution Strategy

# Building Block View

## Whitebox Overall System

Motivation

:   *<text explanation>*

x --> y means x depends on y

```@eval
run(`plantuml building_block_lvl1.pu -tsvg`)
nothing
```

![](building_block_lvl1.svg)


Ledjer contains these subsystems:

* **Configuration**: foo
* **Rules**: foo
* **Data Loader**: foo
* **Account Manager**: foo
* **Reports**: foo
* **Web**: foo

Configuration interfaces:

* iface1
* iface2...

### Configuration

*<Purpose/Responsibility>*

*<Interface(s)>*

*<(Optional) Quality/Performance Characteristics>*

*<(Optional) Directory/File Location>*

*<(Optional) Fulfilled Requirements>*

*<(optional) Open Issues/Problems/Risks>*

### Rules

*<Purpose/Responsibility>*

*<Interface(s)>*

*<(Optional) Quality/Performance Characteristics>*

*<(Optional) Directory/File Location>*

*<(Optional) Fulfilled Requirements>*

*<(optional) Open Issues/Problems/Risks>*

### Configuration

*<Purpose/Responsibility>*

*<Interface(s)>*

*<(Optional) Quality/Performance Characteristics>*

*<(Optional) Directory/File Location>*

*<(Optional) Fulfilled Requirements>*

*<(optional) Open Issues/Problems/Risks>*

### Data Loader

The Data Loader loads CSV files from data directories and converts them to transaction lists.
CSV parsing may differ considerably depending on the actual CSV file format. Parsing is done
using the flexible plug-in system. In order for this to work, Data Loader has to know
which CSV files need which parser. 

```@eval
run(`plantuml interfaces_dataloader.pu -tsvg`)
nothing
```

![](interfaces_dataloader.svg)

### Reports

*<Purpose/Responsibility>*

*<Interface(s)>*

*<(Optional) Quality/Performance Characteristics>*

*<(Optional) Directory/File Location>*

*<(Optional) Fulfilled Requirements>*

*<(optional) Open Issues/Problems/Risks>*

### Web

*<Purpose/Responsibility>*

*<Interface(s)>*

*<(Optional) Quality/Performance Characteristics>*

*<(Optional) Directory/File Location>*

*<(Optional) Fulfilled Requirements>*

*<(optional) Open Issues/Problems/Risks>*

## Level 2

### White Box *<building block 1>*

*<white box template>*

### White Box *<building block 2>*

*<white box template>*

...

### White Box *<building block m>*

*<white box template>*

## Level 3

### White Box <\_building block x.1\_>

*<white box template>*

### White Box <\_building block x.2\_>

*<white box template>*

### White Box <\_building block y.1\_>

*<white box template>*

# Runtime View

## <Runtime Scenario 1>

-   *<insert runtime diagram or textual description of the scenario>*

-   *<insert description of the notable aspects of the interactions
    between the building block instances depicted in this diagram.>*

## <Runtime Scenario 2>

## ...

## <Runtime Scenario n>

# Deployment View

## Infrastructure Level 1

***<Overview Diagram>***

Motivation

:   *<explanation in text form>*

Quality and/or Performance Features

:   *<explanation in text form>*

Mapping of Building Blocks to Infrastructure

:   *<description of the mapping>*

## Infrastructure Level 2

### *<Infrastructure Element 1>*

*<diagram + explanation>*

### *<Infrastructure Element 2>*

*<diagram + explanation>*

...

### *<Infrastructure Element n>*

*<diagram + explanation>*

# Cross-cutting Concepts

## *<Concept 1>*

*<explanation>*

## *<Concept 2>*

*<explanation>*

...

## *<Concept n>*

*<explanation>*

# Design Decisions

# Quality Requirements

## Quality Tree

## Quality Scenarios

# Risks and Technical Debts

# Glossary

| Term                              | Definition                        |
| --------------------------------- | --------------------------------- |
| <Term-1>                        | <definition-1>                  |
| <Term-2>                        | <definition-2>                  |
