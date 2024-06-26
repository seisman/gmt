.. index:: ! end
.. include:: module_core_purpose.rst_

***
end
***

|end_purpose|

Synopsis
--------

.. include:: common_SYN_OPTs.rst_

**gmt end**
[ **show** ]
[ |SYN_OPT-V| ]

|No-spaces|

Description
-----------

This **end** module terminates the modern mode session created with **begin** and finalizes the processing of all registered
figures.  The final graphics will be placed in the current directory and the hidden sessions directory
will be removed.

Optional Arguments
------------------

**show**
    Open all graphics produced by the session in the default viewer.
    **Note**: In the event you have selected more than one output format
    we only open the first one listed.

.. |Add_-V| replace:: |Add_-V_links|
.. include:: explain_-V.rst_
    :start-after: **Syntax**
    :end-before: **Description**

.. include:: explain_help_nopar.rst_

Examples
--------

We first create a modern mode session using **begin**, do plotting, and
close the current modern session and finalize any plots requested::

    gmt begin
      gmt basemap -R0/10/0/10 -JX10c -Baf
    gmt end

Here is the same example, but this time we want to name the map,
create both PDF and PNG versions of it, and automatically open
the PDF file in the relevant viewer::

    gmt begin map pdf,png
      gmt basemap -R0/10/0/10 -JX10c -Baf
    gmt end show

Disable display
---------------

If you wish to run scripts that end with **gmt end show** but sometimes
prefer to not display the results without having to edit all the scripts,
you can set the environmental parameter **GMT_END_SHOW** to off.

See Also
--------

:doc:`begin`,
:doc:`clear`,
:doc:`docs`,
:doc:`figure`,
:doc:`inset`,
:doc:`subplot`,
:doc:`gmt`
