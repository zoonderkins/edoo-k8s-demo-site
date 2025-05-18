{{/*
Expand the name of the chart.
*/}}
{{- define "hugo-site.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "hugo-site.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "hugo-site.labels" -}}
helm.sh/chart: {{ include "hugo-site.chart" . }}
{{ include "hugo-site.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "hugo-site.selectorLabels" -}}
app.kubernetes.io/name: {{ include "hugo-site.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }} 