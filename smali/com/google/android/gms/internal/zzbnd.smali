.class public Lcom/google/android/gms/internal/zzbnd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/auth/i;


# instance fields
.field private zzaQN:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbvf;
        value = "photoUrl"
    .end annotation
.end field

.field private zzadi:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbvf;
        value = "userId"
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

.field private zzbXU:Landroid/net/Uri;
    .annotation runtime Lcom/google/android/gms/internal/zzbmb;
    .end annotation
.end field

.field private zzbYA:Z
    .annotation runtime Lcom/google/android/gms/internal/zzbvf;
        value = "isEmailVerified"
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
.method public constructor <init>(Lcom/google/android/gms/internal/zzbmj;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmj;->getLocalId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnd;->zzadi:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbnd;->zzbYx:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmj;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnd;->zzaka:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmj;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnd;->zzakb:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmj;->getPhotoUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbnd;->zzaQN:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnd;->zzbXU:Landroid/net/Uri;

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmj;->isEmailVerified()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbnd;->zzbYA:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnd;->zzbYH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbmp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmp;->zzWg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnd;->zzadi:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmp;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnd;->zzbYx:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmp;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnd;->zzakb:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmp;->getPhotoUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbnd;->zzaQN:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnd;->zzbXU:Landroid/net/Uri;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnd;->zzaka:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbnd;->zzbYA:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmp;->getRawUserInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnd;->zzbYH:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnd;->zzakb:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnd;->zzaka:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUrl()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnd;->zzaQN:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnd;->zzbXU:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnd;->zzaQN:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnd;->zzbXU:Landroid/net/Uri;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnd;->zzbXU:Landroid/net/Uri;

    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnd;->zzbYx:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnd;->zzadi:Ljava/lang/String;

    return-object v0
.end method

.method public isEmailVerified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbnd;->zzbYA:Z

    return v0
.end method
