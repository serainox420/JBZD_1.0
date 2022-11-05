.class public Lcom/google/android/gms/internal/zzbbb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbbb$zza;,
        Lcom/google/android/gms/internal/zzbbb$zze;,
        Lcom/google/android/gms/internal/zzbbb$zzb;,
        Lcom/google/android/gms/internal/zzbbb$zzc;,
        Lcom/google/android/gms/internal/zzbbb$zzd;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mState:I

.field private final zzbEU:Ljava/lang/String;

.field private zzbHy:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final zzbJf:Ljava/lang/String;

.field private final zzbJg:Ljava/lang/String;

.field private final zzbJh:Lcom/google/android/gms/internal/zzbcc;

.field private final zzbJi:Lcom/google/android/gms/internal/zzbib;

.field private final zzbJj:Ljava/util/concurrent/ExecutorService;

.field private final zzbJk:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzbJl:Lcom/google/android/gms/tagmanager/zzbb;

.field private final zzbJm:Lcom/google/android/gms/internal/zzbbd;

.field private zzbJn:Lcom/google/android/gms/internal/zzbcb;

.field private zzbJo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbbi;",
            ">;"
        }
    .end annotation
.end field

.field private zzbJp:Z

.field private final zzuP:Lcom/google/android/gms/common/util/zze;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbcc;Lcom/google/android/gms/internal/zzbib;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/internal/zzbbd;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbbb;->mState:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJo:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbHy:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJp:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbb;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbEU:Ljava/lang/String;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbcc;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJh:Lcom/google/android/gms/internal/zzbcc;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbib;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJi:Lcom/google/android/gms/internal/zzbib;

    invoke-static {p7}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJj:Ljava/util/concurrent/ExecutorService;

    invoke-static {p8}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJk:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static/range {p9 .. p9}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzbb;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJl:Lcom/google/android/gms/tagmanager/zzbb;

    invoke-static/range {p10 .. p10}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/util/zze;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-static/range {p11 .. p11}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbbd;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJm:Lcom/google/android/gms/internal/zzbbd;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJf:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJg:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/zzbbi;

    const-string v1, "gtm.load"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "gtm"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJl:Lcom/google/android/gms/tagmanager/zzbb;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzbbi;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;ZLcom/google/android/gms/tagmanager/zzbb;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJo:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbEU:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Container "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is scheduled for loading."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJj:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzbbb$zzb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/zzbbb$zzb;-><init>(Lcom/google/android/gms/internal/zzbbb;Lcom/google/android/gms/internal/zzbbb$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbbb;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbbb;->mState:I

    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbbb;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzbbb;->mState:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbbb;Lcom/google/android/gms/internal/zzbcb;)Lcom/google/android/gms/internal/zzbcb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJn:Lcom/google/android/gms/internal/zzbcb;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbbb;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJo:Ljava/util/List;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbbb;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbbb;->zzaB(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbbb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJp:Z

    return p1
.end method

.method private zzaB(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbHy:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbHy:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbEU:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Refresh container "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJk:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzbbb$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbbb$2;-><init>(Lcom/google/android/gms/internal/zzbbb;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbHy:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzbbb;)Lcom/google/android/gms/internal/zzbcb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJn:Lcom/google/android/gms/internal/zzbcb;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzbbb;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJj:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzbbb;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbEU:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzbbb;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzbbb;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJf:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzbbb;)Lcom/google/android/gms/internal/zzbbd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJm:Lcom/google/android/gms/internal/zzbbd;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzbbb;)Lcom/google/android/gms/internal/zzbib;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJi:Lcom/google/android/gms/internal/zzbib;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzbbb;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJo:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzbbb;)Lcom/google/android/gms/tagmanager/zzbb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJl:Lcom/google/android/gms/tagmanager/zzbb;

    return-object v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/zzbbb;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/zzbbb;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJp:Z

    return v0
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/zzbbb;)Lcom/google/android/gms/internal/zzbcc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJh:Lcom/google/android/gms/internal/zzbcc;

    return-object v0
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/zzbbb;)Lcom/google/android/gms/common/util/zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzuP:Lcom/google/android/gms/common/util/zze;

    return-object v0
.end method


# virtual methods
.method public dispatch()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJj:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzbbb$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbbb$1;-><init>(Lcom/google/android/gms/internal/zzbbb;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbbi;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb;->zzbJj:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzbbb$zzc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzbbb$zzc;-><init>(Lcom/google/android/gms/internal/zzbbb;Lcom/google/android/gms/internal/zzbbi;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
