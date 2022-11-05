package com.google.android.gms.fitness.data;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class zza {
    static final Map<DataType, List<DataType>> zzaSn = new HashMap();

    static {
        zzaSn.put(DataType.TYPE_ACTIVITY_SEGMENT, Collections.singletonList(DataType.AGGREGATE_ACTIVITY_SUMMARY));
        zzaSn.put(DataType.TYPE_BASAL_METABOLIC_RATE, Collections.singletonList(DataType.AGGREGATE_BASAL_METABOLIC_RATE_SUMMARY));
        zzaSn.put(DataType.TYPE_BODY_FAT_PERCENTAGE, Collections.singletonList(DataType.AGGREGATE_BODY_FAT_PERCENTAGE_SUMMARY));
        zzaSn.put(DataType.zzaSW, Collections.singletonList(DataType.zzaSY));
        zzaSn.put(DataType.zzaSV, Collections.singletonList(DataType.zzaSZ));
        zzaSn.put(DataType.TYPE_CALORIES_CONSUMED, Collections.singletonList(DataType.AGGREGATE_CALORIES_CONSUMED));
        zzaSn.put(DataType.TYPE_CALORIES_EXPENDED, Collections.singletonList(DataType.AGGREGATE_CALORIES_EXPENDED));
        zzaSn.put(DataType.TYPE_DISTANCE_DELTA, Collections.singletonList(DataType.AGGREGATE_DISTANCE_DELTA));
        zzaSn.put(DataType.zzaSR, Collections.singletonList(DataType.zzaSX));
        zzaSn.put(DataType.TYPE_LOCATION_SAMPLE, Collections.singletonList(DataType.AGGREGATE_LOCATION_BOUNDING_BOX));
        zzaSn.put(DataType.TYPE_NUTRITION, Collections.singletonList(DataType.AGGREGATE_NUTRITION_SUMMARY));
        zzaSn.put(DataType.TYPE_HYDRATION, Collections.singletonList(DataType.AGGREGATE_HYDRATION));
        zzaSn.put(DataType.TYPE_HEART_RATE_BPM, Collections.singletonList(DataType.AGGREGATE_HEART_RATE_SUMMARY));
        zzaSn.put(DataType.TYPE_POWER_SAMPLE, Collections.singletonList(DataType.AGGREGATE_POWER_SUMMARY));
        zzaSn.put(DataType.TYPE_SPEED, Collections.singletonList(DataType.AGGREGATE_SPEED_SUMMARY));
        zzaSn.put(DataType.TYPE_STEP_COUNT_DELTA, Collections.singletonList(DataType.AGGREGATE_STEP_COUNT_DELTA));
        zzaSn.put(DataType.TYPE_WEIGHT, Collections.singletonList(DataType.AGGREGATE_WEIGHT_SUMMARY));
        zzaSn.put(HealthDataTypes.TYPE_BLOOD_PRESSURE, Collections.singletonList(HealthDataTypes.AGGREGATE_BLOOD_PRESSURE_SUMMARY));
        zzaSn.put(HealthDataTypes.TYPE_BLOOD_GLUCOSE, Collections.singletonList(HealthDataTypes.AGGREGATE_BLOOD_GLUCOSE_SUMMARY));
        zzaSn.put(HealthDataTypes.TYPE_OXYGEN_SATURATION, Collections.singletonList(HealthDataTypes.AGGREGATE_OXYGEN_SATURATION_SUMMARY));
        zzaSn.put(HealthDataTypes.TYPE_BODY_TEMPERATURE, Collections.singletonList(HealthDataTypes.AGGREGATE_BODY_TEMPERATURE_SUMMARY));
        zzaSn.put(HealthDataTypes.TYPE_BASAL_BODY_TEMPERATURE, Collections.singletonList(HealthDataTypes.AGGREGATE_BASAL_BODY_TEMPERATURE_SUMMARY));
        zzaSn.put(HealthDataTypes.TYPE_CERVICAL_MUCUS, Collections.singletonList(HealthDataTypes.TYPE_CERVICAL_MUCUS));
        zzaSn.put(HealthDataTypes.TYPE_CERVICAL_POSITION, Collections.singletonList(HealthDataTypes.TYPE_CERVICAL_POSITION));
        zzaSn.put(HealthDataTypes.TYPE_MENSTRUATION, Collections.singletonList(HealthDataTypes.TYPE_MENSTRUATION));
        zzaSn.put(HealthDataTypes.TYPE_OVULATION_TEST, Collections.singletonList(HealthDataTypes.TYPE_OVULATION_TEST));
        zzaSn.put(HealthDataTypes.TYPE_VAGINAL_SPOTTING, Collections.singletonList(HealthDataTypes.TYPE_VAGINAL_SPOTTING));
    }
}
