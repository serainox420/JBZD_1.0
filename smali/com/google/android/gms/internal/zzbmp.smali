.class public Lcom/google/android/gms/internal/zzbmp;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbmp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaQN:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbvf;
        value = "photoUrl"
    .end annotation
.end field

.field public final zzaiI:I
    .annotation runtime Lcom/google/android/gms/internal/zzbmb;
    .end annotation
.end field

.field private zzakb:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbvf;
        value = "displayName"
    .end annotation
.end field

.field private zzbYG:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbvf;
        value = "federatedId"
    .end annotation
.end field

.field private zzbYH:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbvf;
        value = "rawUserInfo"
    .end annotation
.end field

.field private zzbYx:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbvf;
        value = "providerId"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbmq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbmq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbmp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbmp;->zzaiI:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbmp;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbmp;->zzbYG:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbmp;->zzakb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbmp;->zzaQN:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbmp;->zzbYx:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbmp;->zzbYH:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmp;->zzakb:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmp;->zzaQN:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmp;->zzaQN:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmp;->zzbYx:Ljava/lang/String;

    return-object v0
.end method

.method public getRawUserInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmp;->zzbYH:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbmq;->zza(Lcom/google/android/gms/internal/zzbmp;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzVL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmp;->zzaQN:Ljava/lang/String;

    return-object v0
.end method

.method public zzWg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmp;->zzbYG:Ljava/lang/String;

    return-object v0
.end method
