.class public Lcom/google/android/gms/fitness/data/Goal$Recurrence;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/data/Goal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Recurrence"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/data/Goal$Recurrence$RecurrenceUnit;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/Goal$Recurrence;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNIT_DAY:I = 0x1

.field public static final UNIT_MONTH:I = 0x3

.field public static final UNIT_WEEK:I = 0x2


# instance fields
.field private final count:I

.field private final versionCode:I

.field private final zzaTX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzy;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzy;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/fitness/data/Goal$Recurrence;-><init>(III)V

    return-void
.end method

.method constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->count:I

    if-lez p3, :cond_0

    const/4 v0, 0x3

    if-gt p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzaw(Z)V

    iput p3, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zzaTX:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zza(Lcom/google/android/gms/fitness/data/Goal$Recurrence;)Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->count:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->count:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zzaTX:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zzaTX:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic zzb(Lcom/google/android/gms/fitness/data/Goal$Recurrence;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zzaTX:I

    return v0
.end method

.method private static zzgN(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid unit value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "day"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "week"

    goto :goto_0

    :pswitch_2
    const-string v0, "month"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zza(Lcom/google/android/gms/fitness/data/Goal$Recurrence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->count:I

    return v0
.end method

.method public getUnit()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zzaTX:I

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->versionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zzaTX:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "count"

    iget v2, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "unit"

    iget v2, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zzaTX:I

    invoke-static {v2}, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zzgN(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzy;->zza(Lcom/google/android/gms/fitness/data/Goal$Recurrence;Landroid/os/Parcel;I)V

    return-void
.end method
