.class public Lcom/google/android/gms/internal/zztt;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zztt;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzahk:I

.field private static final zzahl:Lcom/google/android/gms/internal/zzub;


# instance fields
.field public final zzahm:Ljava/lang/String;

.field final zzahn:Lcom/google/android/gms/internal/zzub;

.field public final zzaho:I

.field public final zzahp:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "-1"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/zztt;->zzahk:I

    new-instance v0, Lcom/google/android/gms/internal/zztu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zztt;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/internal/zzub$zza;

    const-string v1, "SsbContext"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzub$zza;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzub$zza;->zzZ(Z)Lcom/google/android/gms/internal/zzub$zza;

    move-result-object v0

    const-string v1, "blob"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzub$zza;->zzcn(Ljava/lang/String;)Lcom/google/android/gms/internal/zzub$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzub$zza;->zzqH()Lcom/google/android/gms/internal/zzub;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zztt;->zzahl:Lcom/google/android/gms/internal/zzub;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzub;)V
    .locals 2

    sget v0, Lcom/google/android/gms/internal/zztt;->zzahk:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/zztt;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzub;I[B)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzub;I[B)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    sget v0, Lcom/google/android/gms/internal/zztt;->zzahk:I

    if-eq p3, v0, :cond_0

    invoke-static {p3}, Lcom/google/android/gms/internal/zzua;->zzaP(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid section type "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zztt;->zzahm:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zztt;->zzahn:Lcom/google/android/gms/internal/zzub;

    iput p3, p0, Lcom/google/android/gms/internal/zztt;->zzaho:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zztt;->zzahp:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztt;->zzqF()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzub;Ljava/lang/String;)V
    .locals 2

    invoke-static {p3}, Lcom/google/android/gms/internal/zzua;->zzcm(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/zztt;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzub;I[B)V

    return-void
.end method

.method public constructor <init>([BLcom/google/android/gms/internal/zzub;)V
    .locals 2

    const/4 v0, 0x0

    sget v1, Lcom/google/android/gms/internal/zztt;->zzahk:I

    invoke-direct {p0, v0, p2, v1, p1}, Lcom/google/android/gms/internal/zztt;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzub;I[B)V

    return-void
.end method

.method public static zzl([B)Lcom/google/android/gms/internal/zztt;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zztt;

    sget-object v1, Lcom/google/android/gms/internal/zztt;->zzahl:Lcom/google/android/gms/internal/zzub;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zztt;-><init>([BLcom/google/android/gms/internal/zzub;)V

    return-object v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zztu;->zza(Lcom/google/android/gms/internal/zztt;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzqF()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/zztt;->zzaho:I

    sget v1, Lcom/google/android/gms/internal/zztt;->zzahk:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zztt;->zzaho:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzua;->zzaP(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zztt;->zzaho:I

    const/16 v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid section type "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zztt;->zzahm:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztt;->zzahp:[B

    if-eqz v0, :cond_1

    const-string v0, "Both content and blobContent set"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
