.class public Lcom/google/android/gms/fitness/data/zzae;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/zzae;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final status:I

.field private final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzaf;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzaf;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/zzae;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/zzae;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/fitness/data/zzae;->status:I

    return-void
.end method

.method private zza(Lcom/google/android/gms/fitness/data/zzae;)Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/zzae;->status:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/zzae;->status:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zzha(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "invalid"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "skipped"

    goto :goto_0

    :pswitch_1
    const-string v0, "started"

    goto :goto_0

    :pswitch_2
    const-string v0, "completed"

    goto :goto_0

    :pswitch_3
    const-string v0, "failed"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/zzae;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/zzae;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/zzae;->zza(Lcom/google/android/gms/fitness/data/zzae;)Z

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

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/zzae;->status:I

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/zzae;->versionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/zzae;->status:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/zzae;->status:I

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/zzae;->zzha(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzaf;->zza(Lcom/google/android/gms/fitness/data/zzae;Landroid/os/Parcel;I)V

    return-void
.end method
