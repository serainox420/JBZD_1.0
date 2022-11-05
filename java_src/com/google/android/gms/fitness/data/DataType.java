package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.fitness.data.Field;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
public final class DataType extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<DataType> CREATOR;
    public static final String MIME_TYPE_PREFIX = "vnd.google.fitness.data_type/";
    private final String name;
    private final int versionCode;
    private final List<Field> zzaTa;
    public static final DataType TYPE_STEP_COUNT_DELTA = new DataType("com.google.step_count.delta", Field.FIELD_STEPS);
    @KeepName
    public static final DataType TYPE_STEP_COUNT_CUMULATIVE = new DataType("com.google.step_count.cumulative", Field.FIELD_STEPS);
    public static final DataType zzaSP = new DataType("com.google.step_length", Field.FIELD_STEP_LENGTH);
    public static final DataType TYPE_STEP_COUNT_CADENCE = new DataType("com.google.step_count.cadence", Field.FIELD_RPM);
    public static final DataType zzaSQ = new DataType("com.google.stride_model", Field.zzaTs);
    public static final DataType TYPE_ACTIVITY_SEGMENT = new DataType("com.google.activity.segment", Field.FIELD_ACTIVITY);
    public static final DataType zzaSR = new DataType("com.google.floor_change", Field.FIELD_ACTIVITY, Field.FIELD_CONFIDENCE, Field.zzaTt, Field.zzaTw);
    @Deprecated
    public static final DataType TYPE_CALORIES_CONSUMED = new DataType("com.google.calories.consumed", Field.FIELD_CALORIES);
    public static final DataType TYPE_CALORIES_EXPENDED = new DataType("com.google.calories.expended", Field.FIELD_CALORIES);
    public static final DataType TYPE_BASAL_METABOLIC_RATE = new DataType("com.google.calories.bmr", Field.FIELD_CALORIES);
    public static final DataType TYPE_POWER_SAMPLE = new DataType("com.google.power.sample", Field.FIELD_WATTS);
    @Deprecated
    public static final DataType TYPE_ACTIVITY_SAMPLE = new DataType("com.google.activity.sample", Field.FIELD_ACTIVITY, Field.FIELD_CONFIDENCE);
    public static final DataType TYPE_ACTIVITY_SAMPLES = new DataType("com.google.activity.samples", Field.FIELD_ACTIVITY_CONFIDENCE);
    public static final DataType zzaSS = new DataType("com.google.accelerometer", Field.zza.zzaTH, Field.zza.zzaTI, Field.zza.zzaTJ);
    public static final DataType zzaST = new DataType("com.google.sensor.events", Field.zzaTz, Field.zzaTB, Field.zzaTF);
    public static final DataType zzaSU = new DataType("com.google.sensor.const_rate_events", Field.zzaTA, Field.zzaTC, Field.zzaTD, Field.zzaTE, Field.zzaTF);
    public static final DataType TYPE_HEART_RATE_BPM = new DataType("com.google.heart_rate.bpm", Field.FIELD_BPM);
    public static final DataType TYPE_LOCATION_SAMPLE = new DataType("com.google.location.sample", Field.FIELD_LATITUDE, Field.FIELD_LONGITUDE, Field.FIELD_ACCURACY, Field.FIELD_ALTITUDE);
    public static final DataType TYPE_LOCATION_TRACK = new DataType("com.google.location.track", Field.FIELD_LATITUDE, Field.FIELD_LONGITUDE, Field.FIELD_ACCURACY, Field.FIELD_ALTITUDE);
    public static final DataType TYPE_DISTANCE_DELTA = new DataType("com.google.distance.delta", Field.FIELD_DISTANCE);
    @KeepName
    public static final DataType TYPE_DISTANCE_CUMULATIVE = new DataType("com.google.distance.cumulative", Field.FIELD_DISTANCE);
    public static final DataType TYPE_SPEED = new DataType("com.google.speed", Field.FIELD_SPEED);
    public static final DataType TYPE_CYCLING_WHEEL_REVOLUTION = new DataType("com.google.cycling.wheel_revolution.cumulative", Field.FIELD_REVOLUTIONS);
    public static final DataType TYPE_CYCLING_WHEEL_RPM = new DataType("com.google.cycling.wheel_revolution.rpm", Field.FIELD_RPM);
    public static final DataType TYPE_CYCLING_PEDALING_CUMULATIVE = new DataType("com.google.cycling.pedaling.cumulative", Field.FIELD_REVOLUTIONS);
    public static final DataType TYPE_CYCLING_PEDALING_CADENCE = new DataType("com.google.cycling.pedaling.cadence", Field.FIELD_RPM);
    public static final DataType TYPE_HEIGHT = new DataType("com.google.height", Field.FIELD_HEIGHT);
    public static final DataType TYPE_WEIGHT = new DataType("com.google.weight", Field.FIELD_WEIGHT);
    public static final DataType TYPE_BODY_FAT_PERCENTAGE = new DataType("com.google.body.fat.percentage", Field.FIELD_PERCENTAGE);
    public static final DataType zzaSV = new DataType("com.google.body.waist.circumference", Field.FIELD_CIRCUMFERENCE);
    public static final DataType zzaSW = new DataType("com.google.body.hip.circumference", Field.FIELD_CIRCUMFERENCE);
    public static final DataType TYPE_NUTRITION = new DataType("com.google.nutrition", Field.FIELD_NUTRIENTS, Field.FIELD_MEAL_TYPE, Field.FIELD_FOOD_ITEM);
    public static final DataType TYPE_HYDRATION = new DataType("com.google.hydration", Field.FIELD_VOLUME);
    public static final DataType TYPE_WORKOUT_EXERCISE = new DataType("com.google.activity.exercise", Field.FIELD_EXERCISE, Field.FIELD_REPETITIONS, Field.FIELD_DURATION, Field.FIELD_RESISTANCE_TYPE, Field.FIELD_RESISTANCE);
    public static final DataType AGGREGATE_ACTIVITY_SUMMARY = new DataType("com.google.activity.summary", Field.FIELD_ACTIVITY, Field.FIELD_DURATION, Field.FIELD_NUM_SEGMENTS);
    public static final DataType zzaSX = new DataType("com.google.floor_change.summary", Field.zzaTq, Field.zzaTr, Field.zzaTu, Field.zzaTv, Field.zzaTx, Field.zzaTy);
    public static final DataType AGGREGATE_BASAL_METABOLIC_RATE_SUMMARY = new DataType("com.google.calories.bmr.summary", Field.FIELD_AVERAGE, Field.FIELD_MAX, Field.FIELD_MIN);
    public static final DataType AGGREGATE_STEP_COUNT_DELTA = TYPE_STEP_COUNT_DELTA;
    public static final DataType AGGREGATE_DISTANCE_DELTA = TYPE_DISTANCE_DELTA;
    @Deprecated
    public static final DataType AGGREGATE_CALORIES_CONSUMED = TYPE_CALORIES_CONSUMED;
    public static final DataType AGGREGATE_CALORIES_EXPENDED = TYPE_CALORIES_EXPENDED;
    public static final DataType AGGREGATE_HEART_RATE_SUMMARY = new DataType("com.google.heart_rate.summary", Field.FIELD_AVERAGE, Field.FIELD_MAX, Field.FIELD_MIN);
    public static final DataType AGGREGATE_LOCATION_BOUNDING_BOX = new DataType("com.google.location.bounding_box", Field.FIELD_LOW_LATITUDE, Field.FIELD_LOW_LONGITUDE, Field.FIELD_HIGH_LATITUDE, Field.FIELD_HIGH_LONGITUDE);
    public static final DataType AGGREGATE_POWER_SUMMARY = new DataType("com.google.power.summary", Field.FIELD_AVERAGE, Field.FIELD_MAX, Field.FIELD_MIN);
    public static final DataType AGGREGATE_SPEED_SUMMARY = new DataType("com.google.speed.summary", Field.FIELD_AVERAGE, Field.FIELD_MAX, Field.FIELD_MIN);
    public static final DataType AGGREGATE_BODY_FAT_PERCENTAGE_SUMMARY = new DataType("com.google.body.fat.percentage.summary", Field.FIELD_AVERAGE, Field.FIELD_MAX, Field.FIELD_MIN);
    public static final DataType zzaSY = new DataType("com.google.body.hip.circumference.summary", Field.FIELD_AVERAGE, Field.FIELD_MAX, Field.FIELD_MIN);
    public static final DataType zzaSZ = new DataType("com.google.body.waist.circumference.summary", Field.FIELD_AVERAGE, Field.FIELD_MAX, Field.FIELD_MIN);
    public static final DataType AGGREGATE_WEIGHT_SUMMARY = new DataType("com.google.weight.summary", Field.FIELD_AVERAGE, Field.FIELD_MAX, Field.FIELD_MIN);
    public static final DataType AGGREGATE_HEIGHT_SUMMARY = new DataType("com.google.height.summary", Field.FIELD_AVERAGE, Field.FIELD_MAX, Field.FIELD_MIN);
    public static final DataType AGGREGATE_NUTRITION_SUMMARY = new DataType("com.google.nutrition.summary", Field.FIELD_NUTRIENTS, Field.FIELD_MEAL_TYPE);
    public static final DataType AGGREGATE_HYDRATION = TYPE_HYDRATION;
    @Deprecated
    public static final Set<DataType> AGGREGATE_INPUT_TYPES = new com.google.android.gms.common.util.zza();

    /* loaded from: classes2.dex */
    public static final class zza {
        public static final DataType zzaTb = new DataType("com.google.internal.session.debug", Field.zza.zzaTK);
        public static final DataType zzaTc = new DataType("com.google.internal.session.v2", Field.zza.zzaTL);
    }

    static {
        AGGREGATE_INPUT_TYPES.add(TYPE_ACTIVITY_SEGMENT);
        AGGREGATE_INPUT_TYPES.add(TYPE_BASAL_METABOLIC_RATE);
        AGGREGATE_INPUT_TYPES.add(TYPE_BODY_FAT_PERCENTAGE);
        AGGREGATE_INPUT_TYPES.add(zzaSW);
        AGGREGATE_INPUT_TYPES.add(zzaSV);
        AGGREGATE_INPUT_TYPES.add(TYPE_CALORIES_CONSUMED);
        AGGREGATE_INPUT_TYPES.add(TYPE_CALORIES_EXPENDED);
        AGGREGATE_INPUT_TYPES.add(TYPE_DISTANCE_DELTA);
        AGGREGATE_INPUT_TYPES.add(zzaSR);
        AGGREGATE_INPUT_TYPES.add(TYPE_LOCATION_SAMPLE);
        AGGREGATE_INPUT_TYPES.add(TYPE_NUTRITION);
        AGGREGATE_INPUT_TYPES.add(TYPE_HYDRATION);
        AGGREGATE_INPUT_TYPES.add(TYPE_HEART_RATE_BPM);
        AGGREGATE_INPUT_TYPES.add(TYPE_POWER_SAMPLE);
        AGGREGATE_INPUT_TYPES.add(TYPE_SPEED);
        AGGREGATE_INPUT_TYPES.add(TYPE_STEP_COUNT_DELTA);
        AGGREGATE_INPUT_TYPES.add(TYPE_WEIGHT);
        CREATOR = new zzk();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DataType(int i, String str, List<Field> list) {
        this.versionCode = i;
        this.name = str;
        this.zzaTa = Collections.unmodifiableList(list);
    }

    public DataType(String str, Field... fieldArr) {
        this(1, str, Arrays.asList(fieldArr));
    }

    public static List<DataType> getAggregatesForInput(DataType dataType) {
        List<DataType> list = com.google.android.gms.fitness.data.zza.zzaSn.get(dataType);
        return list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
    }

    public static String getMimeType(DataType dataType) {
        String valueOf = String.valueOf(MIME_TYPE_PREFIX);
        String valueOf2 = String.valueOf(dataType.getName());
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    private boolean zzc(DataType dataType) {
        return this.name.equals(dataType.name) && this.zzaTa.equals(dataType.zzaTa);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof DataType) && zzc((DataType) obj));
    }

    public List<Field> getFields() {
        return this.zzaTa;
    }

    public String getName() {
        return this.name;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.versionCode;
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    public int indexOf(Field field) {
        int indexOf = this.zzaTa.indexOf(field);
        if (indexOf < 0) {
            throw new IllegalArgumentException(String.format("%s not a field of %s", field, this));
        }
        return indexOf;
    }

    public String toString() {
        return String.format("DataType{%s%s}", this.name, this.zzaTa);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzk.zza(this, parcel, i);
    }

    public String zzCk() {
        return this.name.startsWith("com.google.") ? this.name.substring(11) : this.name;
    }
}
