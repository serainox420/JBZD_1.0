.class public Lcom/google/android/gms/internal/zzbmj;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbmj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaNX:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbvf;
        value = "localId"
    .end annotation
.end field

.field private zzaQN:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbvf;
        value = "photoUrl"
    .end annotation
.end field

.field public final zzaiI:I
    .annotation runtime Lcom/google/android/gms/internal/zzbmb;
    .end annotation
.end field

.field private zzajh:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbvf;
        value = "passwordHash"
    .end annotation
.end field

.field private zzaka:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbvf;
        value = "email"
    .end annotation
.end field

.field private zzakb:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbvf;
        value = "displayName"
    .end annotation
.end field

.field private zzbYA:Z
    .annotation runtime Lcom/google/android/gms/internal/zzbvf;
        value = "emailVerified"
    .end annotation
.end field

.field private zzbYB:Lcom/google/android/gms/internal/zzbmr;
    .annotation runtime Lcom/google/android/gms/internal/zzbvf;
        value = "providerUserInfo"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbmk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbmk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbmj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbmj;->zzaiI:I

    new-instance v0, Lcom/google/android/gms/internal/zzbmr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbmr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbmj;->zzbYB:Lcom/google/android/gms/internal/zzbmr;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbmr;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbmj;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbmj;->zzaNX:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbmj;->zzaka:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzbmj;->zzbYA:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbmj;->zzakb:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbmj;->zzaQN:Ljava/lang/String;

    if-nez p7, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbmr;->zzWh()Lcom/google/android/gms/internal/zzbmr;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzbmj;->zzbYB:Lcom/google/android/gms/internal/zzbmr;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzbmj;->zzajh:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {p7}, Lcom/google/android/gms/internal/zzbmr;->zza(Lcom/google/android/gms/internal/zzbmr;)Lcom/google/android/gms/internal/zzbmr;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmj;->zzakb:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmj;->zzaka:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmj;->zzaNX:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmj;->zzajh:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmj;->zzaQN:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmj;->zzaQN:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmailVerified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbmj;->zzbYA:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbmk;->zza(Lcom/google/android/gms/internal/zzbmj;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzVL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmj;->zzaQN:Ljava/lang/String;

    return-object v0
.end method

.method public zzVZ()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbmp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmj;->zzbYB:Lcom/google/android/gms/internal/zzbmr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbmr;->zzVZ()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public zzWa()Lcom/google/android/gms/internal/zzbmr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmj;->zzbYB:Lcom/google/android/gms/internal/zzbmr;

    return-object v0
.end method
