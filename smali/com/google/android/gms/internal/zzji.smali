.class public Lcom/google/android/gms/internal/zzji;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzji$zza;,
        Lcom/google/android/gms/internal/zzji$zze;,
        Lcom/google/android/gms/internal/zzji$zzc;,
        Lcom/google/android/gms/internal/zzji$zzd;,
        Lcom/google/android/gms/internal/zzji$zzb;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzJK:Ljava/lang/String;

.field private zzJL:Lcom/google/android/gms/internal/zzpt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpt",
            "<",
            "Lcom/google/android/gms/internal/zzjf;",
            ">;"
        }
    .end annotation
.end field

.field private zzJM:Lcom/google/android/gms/internal/zzpt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpt",
            "<",
            "Lcom/google/android/gms/internal/zzjf;",
            ">;"
        }
    .end annotation
.end field

.field private zzJN:Lcom/google/android/gms/internal/zzji$zzd;

.field private zzJO:I

.field private final zzrJ:Ljava/lang/Object;

.field private final zztt:Lcom/google/android/gms/internal/zzqh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzji;->zzrJ:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzji;->zzJO:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzji;->zzJK:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzji;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzji;->zztt:Lcom/google/android/gms/internal/zzqh;

    new-instance v0, Lcom/google/android/gms/internal/zzji$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzji$zzb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzji;->zzJL:Lcom/google/android/gms/internal/zzpt;

    new-instance v0, Lcom/google/android/gms/internal/zzji$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzji$zzb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzji;->zzJM:Lcom/google/android/gms/internal/zzpt;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Ljava/lang/String;Lcom/google/android/gms/internal/zzpt;Lcom/google/android/gms/internal/zzpt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzqh;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzpt",
            "<",
            "Lcom/google/android/gms/internal/zzjf;",
            ">;",
            "Lcom/google/android/gms/internal/zzpt",
            "<",
            "Lcom/google/android/gms/internal/zzjf;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzji;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzji;->zzJL:Lcom/google/android/gms/internal/zzpt;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzji;->zzJM:Lcom/google/android/gms/internal/zzpt;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzji;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzji;->zzJO:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzji;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/internal/zzaw;)Lcom/google/android/gms/internal/zzji$zzd;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzji$zzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzji;->zzJM:Lcom/google/android/gms/internal/zzpt;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzji$zzd;-><init>(Lcom/google/android/gms/internal/zzpt;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzji$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/zzji$1;-><init>(Lcom/google/android/gms/internal/zzji;Lcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzji$zzd;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzpo;->runOnUiThread(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzji;Lcom/google/android/gms/internal/zzji$zzd;)Lcom/google/android/gms/internal/zzji$zzd;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzji;->zzJN:Lcom/google/android/gms/internal/zzji$zzd;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzji;)Lcom/google/android/gms/internal/zzqh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji;->zztt:Lcom/google/android/gms/internal/zzqh;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzji;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji;->zzrJ:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzji;)Lcom/google/android/gms/internal/zzpt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji;->zzJL:Lcom/google/android/gms/internal/zzpt;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzji;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzji;->zzJO:I

    return v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzji;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji;->zzJK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzji;)Lcom/google/android/gms/internal/zzji$zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji;->zzJN:Lcom/google/android/gms/internal/zzji$zzd;

    return-object v0
.end method


# virtual methods
.method protected zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzaw;)Lcom/google/android/gms/internal/zzjf;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzjh;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/zzjh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/ads/internal/zze;)V

    return-object v0
.end method

.method protected zzb(Lcom/google/android/gms/internal/zzaw;)Lcom/google/android/gms/internal/zzji$zzd;
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzji;->zza(Lcom/google/android/gms/internal/zzaw;)Lcom/google/android/gms/internal/zzji$zzd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzji$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzji$2;-><init>(Lcom/google/android/gms/internal/zzji;Lcom/google/android/gms/internal/zzji$zzd;)V

    new-instance v2, Lcom/google/android/gms/internal/zzji$3;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzji$3;-><init>(Lcom/google/android/gms/internal/zzji;Lcom/google/android/gms/internal/zzji$zzd;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzji$zzd;->zza(Lcom/google/android/gms/internal/zzqp$zzc;Lcom/google/android/gms/internal/zzqp$zza;)V

    return-object v0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzaw;)Lcom/google/android/gms/internal/zzji$zzc;
    .locals 4

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzji;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzji;->zzJN:Lcom/google/android/gms/internal/zzji$zzd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji;->zzJN:Lcom/google/android/gms/internal/zzji$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzji$zzd;->getStatus()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzji;->zzJO:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzji;->zzb(Lcom/google/android/gms/internal/zzaw;)Lcom/google/android/gms/internal/zzji$zzd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzji;->zzJN:Lcom/google/android/gms/internal/zzji$zzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji;->zzJN:Lcom/google/android/gms/internal/zzji$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzji$zzd;->zzgP()Lcom/google/android/gms/internal/zzji$zzc;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzji;->zzJO:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji;->zzJN:Lcom/google/android/gms/internal/zzji$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzji$zzd;->zzgP()Lcom/google/android/gms/internal/zzji$zzc;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/zzji;->zzJO:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzji;->zzJO:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzji;->zzb(Lcom/google/android/gms/internal/zzaw;)Lcom/google/android/gms/internal/zzji$zzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji;->zzJN:Lcom/google/android/gms/internal/zzji$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzji$zzd;->zzgP()Lcom/google/android/gms/internal/zzji$zzc;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/zzji;->zzJO:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji;->zzJN:Lcom/google/android/gms/internal/zzji$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzji$zzd;->zzgP()Lcom/google/android/gms/internal/zzji$zzc;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzji;->zzJN:Lcom/google/android/gms/internal/zzji$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzji$zzd;->zzgP()Lcom/google/android/gms/internal/zzji$zzc;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public zzgO()Lcom/google/android/gms/internal/zzji$zzc;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzji;->zzc(Lcom/google/android/gms/internal/zzaw;)Lcom/google/android/gms/internal/zzji$zzc;

    move-result-object v0

    return-object v0
.end method
