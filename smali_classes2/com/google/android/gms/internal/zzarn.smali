.class public Lcom/google/android/gms/internal/zzarn;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzarn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final port:I

.field private final zzbiX:Ljava/lang/String;

.field private final zzbiY:Ljava/lang/String;

.field private final zzbiZ:Ljava/lang/String;

.field private final zzbiq:Ljava/lang/String;

.field private final zzbja:Ljava/lang/String;

.field private final zzbjb:Ljava/lang/String;

.field private final zzbjc:Ljava/lang/String;

.field private final zzbjd:Lcom/google/android/gms/internal/zzark;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaro;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaro;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzarn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzarn;->zzbiX:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzarn;->port:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzarn;->zzbiY:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzarn;->zzbiZ:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzarn;->zzbja:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzarn;->zzbjb:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzarn;->zzbiq:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzarn;->zzbjc:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzark;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/google/android/gms/internal/zzark;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzarn;->zzbjd:Lcom/google/android/gms/internal/zzark;

    :goto_0
    return-void

    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzark;

    const/4 v1, 0x1

    invoke-direct {v0, p4, v1}, Lcom/google/android/gms/internal/zzark;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzarn;->zzbjd:Lcom/google/android/gms/internal/zzark;

    goto :goto_0

    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzark;

    const/4 v1, 0x2

    invoke-direct {v0, p5, v1}, Lcom/google/android/gms/internal/zzark;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzarn;->zzbjd:Lcom/google/android/gms/internal/zzark;

    goto :goto_0

    :cond_2
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzark;

    const/4 v1, 0x3

    invoke-direct {v0, p6, v1}, Lcom/google/android/gms/internal/zzark;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzarn;->zzbjd:Lcom/google/android/gms/internal/zzark;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzarn;->zzbjd:Lcom/google/android/gms/internal/zzark;

    goto :goto_0
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarn;->zzbiY:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzarn;->port:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzaro;->zza(Lcom/google/android/gms/internal/zzarn;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzHO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarn;->zzbiX:Ljava/lang/String;

    return-object v0
.end method

.method public zzHP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarn;->zzbiZ:Ljava/lang/String;

    return-object v0
.end method

.method public zzHQ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarn;->zzbja:Ljava/lang/String;

    return-object v0
.end method

.method public zzHR()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarn;->zzbja:Ljava/lang/String;

    return-object v0
.end method

.method public zzHS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarn;->zzbjc:Ljava/lang/String;

    return-object v0
.end method

.method public zzHu()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarn;->zzbiq:Ljava/lang/String;

    return-object v0
.end method
