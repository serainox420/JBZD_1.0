.class public final Lcom/google/android/gms/location/places/zzp;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/places/zzp;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzblV:Lcom/google/android/gms/location/places/zzp;

.field public static final zzblW:Lcom/google/android/gms/location/places/zzp;

.field public static final zzblX:Lcom/google/android/gms/location/places/zzp;

.field public static final zzblY:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/location/places/zzp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzUA:Ljava/lang/String;

.field final zzaiI:I

.field final zzblZ:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "test_type"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/location/places/zzp;->zzx(Ljava/lang/String;I)Lcom/google/android/gms/location/places/zzp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/zzp;->zzblV:Lcom/google/android/gms/location/places/zzp;

    const-string v0, "labeled_place"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/gms/location/places/zzp;->zzx(Ljava/lang/String;I)Lcom/google/android/gms/location/places/zzp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/zzp;->zzblW:Lcom/google/android/gms/location/places/zzp;

    const-string v0, "here_content"

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/google/android/gms/location/places/zzp;->zzx(Ljava/lang/String;I)Lcom/google/android/gms/location/places/zzp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/zzp;->zzblX:Lcom/google/android/gms/location/places/zzp;

    sget-object v0, Lcom/google/android/gms/location/places/zzp;->zzblV:Lcom/google/android/gms/location/places/zzp;

    sget-object v1, Lcom/google/android/gms/location/places/zzp;->zzblW:Lcom/google/android/gms/location/places/zzp;

    sget-object v2, Lcom/google/android/gms/location/places/zzp;->zzblX:Lcom/google/android/gms/location/places/zzp;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/util/zzf;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/zzp;->zzblY:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/location/places/zzq;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/zzq;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/zzp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/location/places/zzp;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/zzp;->zzUA:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/location/places/zzp;->zzblZ:I

    return-void
.end method

.method private static zzx(Ljava/lang/String;I)Lcom/google/android/gms/location/places/zzp;
    .locals 2

    new-instance v0, Lcom/google/android/gms/location/places/zzp;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/location/places/zzp;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/location/places/zzp;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/zzp;

    iget-object v2, p0, Lcom/google/android/gms/location/places/zzp;->zzUA:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/zzp;->zzUA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/location/places/zzp;->zzblZ:I

    iget v3, p1, Lcom/google/android/gms/location/places/zzp;->zzblZ:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/zzp;->zzUA:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/zzp;->zzUA:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/zzq;->zza(Lcom/google/android/gms/location/places/zzp;Landroid/os/Parcel;I)V

    return-void
.end method
