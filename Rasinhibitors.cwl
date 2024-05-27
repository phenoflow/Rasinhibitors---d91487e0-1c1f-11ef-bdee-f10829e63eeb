cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  rasinhibitors-400mg---primary:
    run: rasinhibitors-400mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  rasinhibitors-375mg---primary:
    run: rasinhibitors-375mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: rasinhibitors-400mg---primary/output
  rasinhibitors-150mg---primary:
    run: rasinhibitors-150mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: rasinhibitors-375mg---primary/output
  rasinhibitors-100mg---primary:
    run: rasinhibitors-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: rasinhibitors-150mg---primary/output
  rasinhibitors-625mg---primary:
    run: rasinhibitors-625mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: rasinhibitors-100mg---primary/output
  rasinhibitors-320mg---primary:
    run: rasinhibitors-320mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: rasinhibitors-625mg---primary/output
  rasinhibitors-cozaarcomp---primary:
    run: rasinhibitors-cozaarcomp---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: rasinhibitors-320mg---primary/output
  rasinhibitors-erbumine---primary:
    run: rasinhibitors-erbumine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: rasinhibitors-cozaarcomp---primary/output
  rasinhibitors-innovace---primary:
    run: rasinhibitors-innovace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: rasinhibitors-erbumine---primary/output
  rasinhibitors-moexipril---primary:
    run: rasinhibitors-moexipril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: rasinhibitors-innovace---primary/output
  zestoretic-rasinhibitors---primary:
    run: zestoretic-rasinhibitors---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: rasinhibitors-moexipril---primary/output
  rasinhibitors-candesartan---primary:
    run: rasinhibitors-candesartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: zestoretic-rasinhibitors---primary/output
  rasinhibitors-600mg---primary:
    run: rasinhibitors-600mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: rasinhibitors-candesartan---primary/output
  rasinhibitors-gopten---primary:
    run: rasinhibitors-gopten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: rasinhibitors-600mg---primary/output
  rasinhibitors-fosinopril---primary:
    run: rasinhibitors-fosinopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: rasinhibitors-gopten---primary/output
  rasinhibitors-bisoprolol---primary:
    run: rasinhibitors-bisoprolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: rasinhibitors-fosinopril---primary/output
  rasinhibitors-lisopress---primary:
    run: rasinhibitors-lisopress---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: rasinhibitors-bisoprolol---primary/output
  rasinhibitors-captopril---primary:
    run: rasinhibitors-captopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: rasinhibitors-lisopress---primary/output
  rasinhibitors-tritace---primary:
    run: rasinhibitors-tritace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: rasinhibitors-captopril---primary/output
  rasinhibitors-indapamide---primary:
    run: rasinhibitors-indapamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: rasinhibitors-tritace---primary/output
  rasinhibitors-ramipril---primary:
    run: rasinhibitors-ramipril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: rasinhibitors-indapamide---primary/output
  rasinhibitors-180mg---primary:
    run: rasinhibitors-180mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: rasinhibitors-ramipril---primary/output
  rasinhibitors-trandolapril---primary:
    run: rasinhibitors-trandolapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: rasinhibitors-180mg---primary/output
  rasinhibitors-quinapril---primary:
    run: rasinhibitors-quinapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: rasinhibitors-trandolapril---primary/output
  rasinhibitors-exforge---primary:
    run: rasinhibitors-exforge---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: rasinhibitors-quinapril---primary/output
  rasinhibitors-carace---primary:
    run: rasinhibitors-carace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: rasinhibitors-exforge---primary/output
  rasinhibitors-vascace---primary:
    run: rasinhibitors-vascace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: rasinhibitors-carace---primary/output
  rasinhibitors-coversyl---primary:
    run: rasinhibitors-coversyl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: rasinhibitors-vascace---primary/output
  rasinhibitors-losartan---primary:
    run: rasinhibitors-losartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: rasinhibitors-coversyl---primary/output
  rasinhibitors-arginine---primary:
    run: rasinhibitors-arginine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: rasinhibitors-losartan---primary/output
  rasinhibitors-300mg---primary:
    run: rasinhibitors-300mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: rasinhibitors-arginine---primary/output
  rasinhibitors-suspension---primary:
    run: rasinhibitors-suspension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: rasinhibitors-300mg---primary/output
  rasinhibitors-codiovan---primary:
    run: rasinhibitors-codiovan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: rasinhibitors-suspension---primary/output
  rasinhibitors-160mg---primary:
    run: rasinhibitors-160mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: rasinhibitors-codiovan---primary/output
  rasinhibitors-teveten---primary:
    run: rasinhibitors-teveten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: rasinhibitors-160mg---primary/output
  rasinhibitors-capoten---primary:
    run: rasinhibitors-capoten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: rasinhibitors-teveten---primary/output
  rasinhibitors-accupro---primary:
    run: rasinhibitors-accupro---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: rasinhibitors-capoten---primary/output
  rasinhibitors-perindopril---primary:
    run: rasinhibitors-perindopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: rasinhibitors-accupro---primary/output
  rasinhibitors-ednyt---primary:
    run: rasinhibitors-ednyt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: rasinhibitors-perindopril---primary/output
  rasinhibitors-perdix---primary:
    run: rasinhibitors-perdix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: rasinhibitors-ednyt---primary/output
  rasinhibitors-capozide---primary:
    run: rasinhibitors-capozide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: rasinhibitors-perdix---primary/output
  rasinhibitors-tosilate---primary:
    run: rasinhibitors-tosilate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: rasinhibitors-capozide---primary/output
  rasinhibitors-kaplon---primary:
    run: rasinhibitors-kaplon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: rasinhibitors-tosilate---primary/output
  rasinhibitors-tablet---primary:
    run: rasinhibitors-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: rasinhibitors-kaplon---primary/output
  rasinhibitors-modifiedrelease---primary:
    run: rasinhibitors-modifiedrelease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: rasinhibitors-tablet---primary/output
  rasinhibitors-titration---primary:
    run: rasinhibitors-titration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: rasinhibitors-modifiedrelease---primary/output
  pralenal-rasinhibitors---primary:
    run: pralenal-rasinhibitors---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: rasinhibitors-titration---primary/output
  rasinhibitors-500microgram---primary:
    run: rasinhibitors-500microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: pralenal-rasinhibitors---primary/output
  rasinhibitors-captomex---primary:
    run: rasinhibitors-captomex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: rasinhibitors-500microgram---primary/output
  rasinhibitors-solution---primary:
    run: rasinhibitors-solution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: rasinhibitors-captomex---primary/output
  rasinhibitors-wafer---primary:
    run: rasinhibitors-wafer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: rasinhibitors-solution---primary/output
  rasinhibitors-tanatril---primary:
    run: rasinhibitors-tanatril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: rasinhibitors-wafer---primary/output
  rasinhibitors-amlodipine---primary:
    run: rasinhibitors-amlodipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: rasinhibitors-tanatril---primary/output
  generic-rasinhibitors---primary:
    run: generic-rasinhibitors---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: rasinhibitors-amlodipine---primary/output
  rasinhibitors-aprovel---primary:
    run: rasinhibitors-aprovel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: generic-rasinhibitors---primary/output
  rasinhibitors-quinil---primary:
    run: rasinhibitors-quinil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: rasinhibitors-aprovel---primary/output
  rasinhibitors-zestril---primary:
    run: rasinhibitors-zestril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: rasinhibitors-quinil---primary/output
  rasinhibitors-ecopace---primary:
    run: rasinhibitors-ecopace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: rasinhibitors-zestril---primary/output
  rasinhibitors-tensopril---primary:
    run: rasinhibitors-tensopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: rasinhibitors-ecopace---primary/output
  rasinhibitors-cilazapril---primary:
    run: rasinhibitors-cilazapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: rasinhibitors-tensopril---primary/output
  rasinhibitors-acepril---primary:
    run: rasinhibitors-acepril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: rasinhibitors-cilazapril---primary/output
  rasinhibitors-eprosartan---primary:
    run: rasinhibitors-eprosartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: rasinhibitors-acepril---primary/output
  rasinhibitors-noyada---primary:
    run: rasinhibitors-noyada---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: rasinhibitors-eprosartan---primary/output
  rasinhibitors-odrik---primary:
    run: rasinhibitors-odrik---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: rasinhibitors-noyada---primary/output
  rasinhibitors-imidapril---primary:
    run: rasinhibitors-imidapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: rasinhibitors-odrik---primary/output
  rasinhibitors-olmetec---primary:
    run: rasinhibitors-olmetec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: rasinhibitors-imidapril---primary/output
  rasinhibitors-staril---primary:
    run: rasinhibitors-staril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: rasinhibitors-olmetec---primary/output
  rasinhibitors-lopace---primary:
    run: rasinhibitors-lopace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: rasinhibitors-staril---primary/output
  rasinhibitors-olmesartan---primary:
    run: rasinhibitors-olmesartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: rasinhibitors-lopace---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: rasinhibitors-olmesartan---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
