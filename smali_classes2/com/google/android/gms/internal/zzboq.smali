.class public Lcom/google/android/gms/internal/zzboq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzboj$zza;
.implements Lcom/google/android/gms/internal/zzbop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzboq$zzb;,
        Lcom/google/android/gms/internal/zzboq$zzd;,
        Lcom/google/android/gms/internal/zzboq$zzf;,
        Lcom/google/android/gms/internal/zzboq$zze;,
        Lcom/google/android/gms/internal/zzboq$zzc;,
        Lcom/google/android/gms/internal/zzboq$zza;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static zzcbr:J


# instance fields
.field private final zzcaF:Lcom/google/android/gms/internal/zzbrn;

.field private final zzcat:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzcbD:Lcom/google/android/gms/internal/zzbok;

.field private final zzcbK:Lcom/google/android/gms/internal/zzbop$zza;

.field private zzcbL:Ljava/lang/String;

.field private zzcbM:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzcbN:Z

.field private zzcbO:J

.field private zzcbP:Lcom/google/android/gms/internal/zzboj;

.field private zzcbQ:Lcom/google/android/gms/internal/zzboq$zzb;

.field private zzcbR:J

.field private zzcbS:J

.field private zzcbT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/internal/zzboq$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzcbU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzboq$zzd;",
            ">;"
        }
    .end annotation
.end field

.field private zzcbV:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/internal/zzboq$zzf;",
            ">;"
        }
    .end annotation
.end field

.field private zzcbW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzboq$zzc;",
            "Lcom/google/android/gms/internal/zzboq$zze;",
            ">;"
        }
    .end annotation
.end field

.field private zzcbX:Ljava/lang/String;

.field private zzcbY:Z

.field private final zzcbZ:Lcom/google/android/gms/internal/zzbol;

.field private final zzcbs:Lcom/google/android/gms/internal/zzbon;

.field private final zzcca:Lcom/google/android/gms/internal/zzbou;

.field private zzccb:Ljava/lang/String;

.field private zzccc:J

.field private zzccd:I

.field private zzcce:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private zzccf:J

.field private zzccg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/zzboq;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/zzboq;->$assertionsDisabled:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/gms/internal/zzboq;->zzcbr:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbol;Lcom/google/android/gms/internal/zzbon;Lcom/google/android/gms/internal/zzbop$zza;)V
    .locals 8

    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbM:Ljava/util/HashSet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbN:Z

    sget-object v0, Lcom/google/android/gms/internal/zzboq$zzb;->zzccq:Lcom/google/android/gms/internal/zzboq$zzb;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbQ:Lcom/google/android/gms/internal/zzboq$zzb;

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzboq;->zzcbR:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzboq;->zzcbS:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzboq;->zzccc:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzboq;->zzccd:I

    iput-object v7, p0, Lcom/google/android/gms/internal/zzboq;->zzcce:Ljava/util/concurrent/ScheduledFuture;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzboq;->zzcbK:Lcom/google/android/gms/internal/zzbop$zza;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzboq;->zzcbZ:Lcom/google/android/gms/internal/zzbol;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbol;->zzXt()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcat:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbol;->zzXs()Lcom/google/android/gms/internal/zzbok;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbD:Lcom/google/android/gms/internal/zzbok;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzboq;->zzcbs:Lcom/google/android/gms/internal/zzbon;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbW:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbT:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbV:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbU:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/zzbou$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq;->zzcat:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbol;->zzXr()Lcom/google/android/gms/internal/zzbro;

    move-result-object v2

    const-string v3, "ConnectionRetryHelper"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzbou$zza;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzbro;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzbou$zza;->zzaL(J)Lcom/google/android/gms/internal/zzbou$zza;

    move-result-object v0

    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzbou$zza;->zzj(D)Lcom/google/android/gms/internal/zzbou$zza;

    move-result-object v0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzbou$zza;->zzaM(J)Lcom/google/android/gms/internal/zzbou$zza;

    move-result-object v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzbou$zza;->zzk(D)Lcom/google/android/gms/internal/zzbou$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbou$zza;->zzYi()Lcom/google/android/gms/internal/zzbou;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcca:Lcom/google/android/gms/internal/zzbou;

    sget-wide v0, Lcom/google/android/gms/internal/zzboq;->zzcbr:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/google/android/gms/internal/zzboq;->zzcbr:J

    new-instance v2, Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbol;->zzXr()Lcom/google/android/gms/internal/zzbro;

    move-result-object v3

    const-string v4, "PersistentConnection"

    const/16 v5, 0x17

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "pc_"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzbrn;-><init>(Lcom/google/android/gms/internal/zzbro;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    iput-object v7, p0, Lcom/google/android/gms/internal/zzboq;->zzccb:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXM()V

    return-void
.end method

.method private isIdle()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbT:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzboq;->zzccg:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbV:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzX(Ljava/util/List;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/internal/zzboq$zze;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "removing all listens at path "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzboq$zzc;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzboq$zze;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzboq$zzc;->zzb(Lcom/google/android/gms/internal/zzboq$zzc;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzboq$zze;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzboq;->zzcbW:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzboq$zze;->zzXQ()Lcom/google/android/gms/internal/zzboq$zzc;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXM()V

    return-object v2
.end method

.method private zzXA()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbQ:Lcom/google/android/gms/internal/zzboq$zzb;

    sget-object v1, Lcom/google/android/gms/internal/zzboq$zzb;->zzcct:Lcom/google/android/gms/internal/zzboq$zzb;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbQ:Lcom/google/android/gms/internal/zzboq$zzb;

    sget-object v1, Lcom/google/android/gms/internal/zzboq$zzb;->zzccu:Lcom/google/android/gms/internal/zzboq$zzb;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzXB()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbQ:Lcom/google/android/gms/internal/zzboq$zzb;

    sget-object v1, Lcom/google/android/gms/internal/zzboq$zzb;->zzccu:Lcom/google/android/gms/internal/zzboq$zzb;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzXD()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzboq;->zzXC()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbQ:Lcom/google/android/gms/internal/zzboq$zzb;

    sget-object v3, Lcom/google/android/gms/internal/zzboq$zzb;->zzccq:Lcom/google/android/gms/internal/zzboq$zzb;

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Not in disconnected state: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzboq;->zzcbQ:Lcom/google/android/gms/internal/zzboq$zzb;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/zzbom;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbY:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v3, "Scheduling connection attempt"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzboq;->zzcbY:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq;->zzcca:Lcom/google/android/gms/internal/zzbou;

    new-instance v2, Lcom/google/android/gms/internal/zzboq$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzboq$1;-><init>(Lcom/google/android/gms/internal/zzboq;Z)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzbou;->zzr(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private zzXE()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbV:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzboq$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzboq$zzf;->zzXT()Ljava/util/Map;

    move-result-object v2

    const-string v3, "h"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzboq$zzf;->zzXV()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzboq$zzf;->zzXP()Lcom/google/android/gms/internal/zzbos;

    move-result-object v0

    const-string v2, "disconnected"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzbos;->zzar(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private zzXF()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzboq;->zzbd(Z)V

    return-void
.end method

.method private zzXG()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzboq;->zzbd(Z)V

    return-void
.end method

.method private zzXH()V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXA()Z

    move-result v0

    const-string v2, "Must be connected to send unauth."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzbom;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbX:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Auth token must not be set."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/zzbom;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "unauth"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzboq;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzboq$zza;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private zzXI()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v3, "calling restore state"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbQ:Lcom/google/android/gms/internal/zzboq$zzb;

    sget-object v3, Lcom/google/android/gms/internal/zzboq$zzb;->zzccs:Lcom/google/android/gms/internal/zzboq$zzb;

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "Wanted to restore auth, but was in wrong state: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzboq;->zzcbQ:Lcom/google/android/gms/internal/zzboq$zzb;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/zzbom;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbX:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "Not restoring auth because token is null."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzboq$zzb;->zzccu:Lcom/google/android/gms/internal/zzboq$zzb;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbQ:Lcom/google/android/gms/internal/zzboq$zzb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXJ()V

    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "Restoring auth."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/zzboq$zzb;->zzcct:Lcom/google/android/gms/internal/zzboq$zzb;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbQ:Lcom/google/android/gms/internal/zzboq$zzb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXG()V

    goto :goto_1
.end method

.method private zzXJ()V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbQ:Lcom/google/android/gms/internal/zzboq$zzb;

    sget-object v3, Lcom/google/android/gms/internal/zzboq$zzb;->zzccu:Lcom/google/android/gms/internal/zzboq$zzb;

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "Should be connected if we\'re restoring state, but we are: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzboq;->zzcbQ:Lcom/google/android/gms/internal/zzboq$zzb;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/zzbom;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "Restoring outstanding listens"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzboq$zze;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzboq$zze;->zzXQ()Lcom/google/android/gms/internal/zzboq$zzc;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Restoring listen "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzboq;->zzb(Lcom/google/android/gms/internal/zzboq$zze;)V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "Restoring writes."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq;->zzcbV:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/zzboq;->zzaI(J)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzboq$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzboq$zzd;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzboq$zzd;->zzXO()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzboq$zzd;->getData()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzboq$zzd;->zzXP()Lcom/google/android/gms/internal/zzbos;

    move-result-object v0

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzboq;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbos;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private zzXK()V
    .locals 6

    const/16 v5, 0x2e

    const/16 v3, 0x2d

    const/4 v4, 0x1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzbst;->zzabG()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbZ:Lcom/google/android/gms/internal/zzbol;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbol;->zzXu()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "persistence.android.enabled"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v2, "sdk.android."

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbZ:Lcom/google/android/gms/internal/zzbol;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbol;->zzXv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "Sending first connection stats"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzboq;->zzaz(Ljava/util/Map;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/google/android/gms/internal/zzboq;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbZ:Lcom/google/android/gms/internal/zzbol;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbol;->zzXu()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Stats for persistence on JVM missing (persistence not yet supported)"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    const-string v2, "sdk.java."

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbZ:Lcom/google/android/gms/internal/zzbol;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbol;->zzXv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private zzXL()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbS:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzboq;->zzcbS:J

    return-wide v0
.end method

.method private zzXM()V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq;->zzcce:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq;->zzcce:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcat:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzboq$7;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzboq$7;-><init>(Lcom/google/android/gms/internal/zzboq;)V

    const-wide/32 v2, 0xea60

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcce:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "connection_idle"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzboq;->isInterrupted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->isIdle()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/internal/zzbom;->zzbb(Z)V

    const-string v0, "connection_idle"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzboq;->resume(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private zzXN()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzboq;->zzccf:J

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzY(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzboq;->zzX(Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzboq$zze;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzboq$zze;->zzd(Lcom/google/android/gms/internal/zzboq$zze;)Lcom/google/android/gms/internal/zzbos;

    move-result-object v0

    const-string v2, "permission_denied"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzbos;->zzar(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzboq;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzboq;->zzccd:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzboq;Lcom/google/android/gms/internal/zzboq$zzb;)Lcom/google/android/gms/internal/zzboq$zzb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzboq;->zzcbQ:Lcom/google/android/gms/internal/zzboq$zzb;

    return-object p1
.end method

.method private zza(Lcom/google/android/gms/internal/zzboq$zzc;)Lcom/google/android/gms/internal/zzboq$zze;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xf

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "removing query "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbW:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x40

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Trying to remove listener for QuerySpec "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but no listener exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbW:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzboq$zze;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq;->zzcbW:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXM()V

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzboq;Lcom/google/android/gms/internal/zzboq$zzc;)Lcom/google/android/gms/internal/zzboq$zze;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzboq;->zza(Lcom/google/android/gms/internal/zzboq$zzc;)Lcom/google/android/gms/internal/zzboq$zze;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzboq;)Lcom/google/android/gms/internal/zzbrn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzboq;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzboq;->zzcbX:Ljava/lang/String;

    return-object p1
.end method

.method private zza(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "p"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbom;->zzW(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "d"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    const-string v1, "h"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzboq;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzboq;->zzcce:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method private zza(Lcom/google/android/gms/internal/zzboq$zze;)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "p"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzboq$zze;->zzc(Lcom/google/android/gms/internal/zzboq$zze;)Lcom/google/android/gms/internal/zzboq$zzc;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzboq$zzc;->zzb(Lcom/google/android/gms/internal/zzboq$zzc;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbom;->zzW(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzboq$zze;->zzXR()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "q"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzboq$zze;->zzXQ()Lcom/google/android/gms/internal/zzboq$zzc;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzboq$zzc;->zzc(Lcom/google/android/gms/internal/zzboq$zzc;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "t"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "n"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/internal/zzboq;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzboq$zza;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzboq;Ljava/util/List;Lcom/google/android/gms/internal/zzboq$zzc;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzboq;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzboq$zzc;)V

    return-void
.end method

.method private zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbos;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzbos;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "p"

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbom;->zzW(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "d"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/zzboq$2;

    invoke-direct {v1, p0, p4}, Lcom/google/android/gms/internal/zzboq$2;-><init>(Lcom/google/android/gms/internal/zzboq;Lcom/google/android/gms/internal/zzbos;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzboq;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzboq$zza;)V

    return-void
.end method

.method private zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/zzbos;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbos;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/internal/zzboq;->zza(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzboq;->zzcbR:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzboq;->zzcbR:J

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq;->zzcbV:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/zzboq$zzf;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v0, p5, v6}, Lcom/google/android/gms/internal/zzboq$zzf;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzbos;Lcom/google/android/gms/internal/zzboq$1;)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXB()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/zzboq;->zzaI(J)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzboq;->zzccf:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXM()V

    return-void
.end method

.method private zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzboq$zza;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzboq$zza;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/internal/zzboq;->zza(Ljava/lang/String;ZLjava/util/Map;Lcom/google/android/gms/internal/zzboq$zza;)V

    return-void
.end method

.method private zza(Ljava/lang/String;ZLjava/util/Map;Lcom/google/android/gms/internal/zzboq$zza;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzboq$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXL()J

    move-result-wide v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "r"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "a"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "b"

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzboq;->zzcbP:Lcom/google/android/gms/internal/zzboj;

    invoke-virtual {v3, v2, p2}, Lcom/google/android/gms/internal/zzboj;->zza(Ljava/util/Map;Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzboq;->zzcbT:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private zza(Ljava/util/List;Lcom/google/android/gms/internal/zzboq$zzc;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/zzboq$zzc;",
            ")V"
        }
    .end annotation

    const-string v0, "no_index"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/zzboq$zzc;->zzc(Lcom/google/android/gms/internal/zzboq$zzc;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "i"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xe

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "\".indexOn\": \""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzboq$zzc;->zzb(Lcom/google/android/gms/internal/zzboq$zzc;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbom;->zzW(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x76

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Using an unspecified index. Consider adding \'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to your security and Firebase Database rules for better performance"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbrn;->warn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzboq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzboq;->zzcbY:Z

    return p1
.end method

.method private zzaH(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "handling timestamp"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "serverTimeOffset"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbK:Lcom/google/android/gms/internal/zzbop$zza;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzbop$zza;->zzax(Ljava/util/Map;)V

    return-void
.end method

.method private zzaI(J)V
    .locals 9

    sget-boolean v0, Lcom/google/android/gms/internal/zzboq;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXB()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "sendPut called when we can\'t send writes (we\'re disconnected or writes are paused)."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbV:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzboq$zzf;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzboq$zzf;->zzXP()Lcom/google/android/gms/internal/zzbos;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzboq$zzf;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzboq$zzf;->zzXU()V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzboq$zzf;->zzXT()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzboq$4;

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzboq$4;-><init>(Lcom/google/android/gms/internal/zzboq;Ljava/lang/String;JLcom/google/android/gms/internal/zzboq$zzf;Lcom/google/android/gms/internal/zzbos;)V

    invoke-direct {p0, v3, v0, v1}, Lcom/google/android/gms/internal/zzboq;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzboq$zza;)V

    return-void
.end method

.method private zzaq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x17

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Auth token revoked: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbrn;->warn(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbX:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbY:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbK:Lcom/google/android/gms/internal/zzbop$zza;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbop$zza;->zzbc(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbP:Lcom/google/android/gms/internal/zzboj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzboj;->close()V

    return-void
.end method

.method private zzay(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v0, "msg"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbrn;->info(Ljava/lang/String;)V

    return-void
.end method

.method private zzaz(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "c"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "s"

    new-instance v2, Lcom/google/android/gms/internal/zzboq$6;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzboq$6;-><init>(Lcom/google/android/gms/internal/zzboq;)V

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/internal/zzboq;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzboq$zza;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "Not sending stats because stats are empty"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzboq;)Lcom/google/android/gms/internal/zzboq$zzb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbQ:Lcom/google/android/gms/internal/zzboq$zzb;

    return-object v0
.end method

.method private zzb(Lcom/google/android/gms/internal/zzboq$zze;)V
    .locals 5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "p"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzboq$zze;->zzXQ()Lcom/google/android/gms/internal/zzboq$zzc;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzboq$zzc;->zzb(Lcom/google/android/gms/internal/zzboq$zzc;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbom;->zzW(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzboq$zze;->zzXR()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "q"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzboq$zze;->zzc(Lcom/google/android/gms/internal/zzboq$zze;)Lcom/google/android/gms/internal/zzboq$zzc;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzboq$zzc;->zzc(Lcom/google/android/gms/internal/zzboq$zzc;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "t"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzboq$zze;->zzXS()Lcom/google/android/gms/internal/zzboo;

    move-result-object v0

    const-string v2, "h"

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzboo;->zzXw()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzboo;->zzXx()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzboo;->zzXy()Lcom/google/android/gms/internal/zzboi;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzboi;->zzXp()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbom;->zzW(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v4, "hs"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzboi;->zzXq()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ps"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ch"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "q"

    new-instance v2, Lcom/google/android/gms/internal/zzboq$5;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/zzboq$5;-><init>(Lcom/google/android/gms/internal/zzboq;Lcom/google/android/gms/internal/zzboq$zze;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzboq;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzboq$zza;)V

    return-void
.end method

.method private zzbd(Z)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXA()Z

    move-result v0

    const-string v3, "Must be connected to send auth, but was: %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzboq;->zzcbQ:Lcom/google/android/gms/internal/zzboq$zzb;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/zzbom;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbX:Ljava/lang/String;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Auth token must be set to authenticate!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/zzbom;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzboq$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzboq$3;-><init>(Lcom/google/android/gms/internal/zzboq;Z)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzboq;->zzcbX:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbsu;->zzjd(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbsu;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "cred"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbsu;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbsu;->zzabH()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, "authvar"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbsu;->zzabH()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v3, "gauth"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/google/android/gms/internal/zzboq;->zza(Ljava/lang/String;ZLjava/util/Map;Lcom/google/android/gms/internal/zzboq$zza;)V

    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const-string v3, "cred"

    iget-object v4, p0, Lcom/google/android/gms/internal/zzboq;->zzcbX:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "auth"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/google/android/gms/internal/zzboq;->zza(Ljava/lang/String;ZLjava/util/Map;Lcom/google/android/gms/internal/zzboq$zza;)V

    goto :goto_1
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzboq;)J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzboq;->zzccc:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzboq;->zzccc:J

    return-wide v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzboq;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzboq;->zzccc:J

    return-wide v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzboq;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXD()V

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzboq;)Lcom/google/android/gms/internal/zzbok;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbD:Lcom/google/android/gms/internal/zzbok;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzboq;)Lcom/google/android/gms/internal/zzbop$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbK:Lcom/google/android/gms/internal/zzbop$zza;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzboq;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXJ()V

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzboq;)Lcom/google/android/gms/internal/zzboj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbP:Lcom/google/android/gms/internal/zzboj;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzboq;)I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzboq;->zzccd:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzboq;->zzccd:I

    return v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/zzboq;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzboq;->zzccd:I

    return v0
.end method

.method private zzk(Ljava/lang/String;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "handleServerMessage: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string v0, "d"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "m"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    const-string v0, "m"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v0, "p"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "d"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v1, "t"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbom;->zzaq(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v3, :cond_4

    instance-of v1, v2, Ljava/util/Map;

    if-eqz v1, :cond_4

    move-object v1, v2

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "ignoring empty merge for path "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/google/android/gms/internal/zzbom;->zziM(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq;->zzcbK:Lcom/google/android/gms/internal/zzbop$zza;

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/zzbop$zza;->zza(Ljava/util/List;Ljava/lang/Object;ZLjava/lang/Long;)V

    goto :goto_1

    :cond_5
    const-string v0, "rm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "p"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbom;->zziM(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    const-string v1, "d"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "t"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbom;->zzaq(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v7

    check-cast v1, Ljava/util/List;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "s"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "e"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbom;->zziM(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object v5, v2

    :goto_3
    if-eqz v3, :cond_7

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbom;->zziM(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :goto_4
    const-string v3, "m"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/zzbor;

    invoke-direct {v3, v5, v2, v1}, Lcom/google/android/gms/internal/zzbor;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move-object v5, v4

    goto :goto_3

    :cond_7
    move-object v2, v4

    goto :goto_4

    :cond_8
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "Ignoring empty range merge for path "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbK:Lcom/google/android/gms/internal/zzbop$zza;

    invoke-interface {v0, v6, v8, v7}, Lcom/google/android/gms/internal/zzbop$zza;->zza(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;)V

    goto/16 :goto_1

    :cond_b
    const-string v0, "c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "p"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbom;->zziM(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzboq;->zzY(Ljava/util/List;)V

    goto/16 :goto_1

    :cond_c
    const-string v0, "ac"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "s"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "d"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzboq;->zzaq(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    const-string v0, "sd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzboq;->zzay(Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "Unrecognized action from server: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/zzboq;)Lcom/google/android/gms/internal/zzbou;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcca:Lcom/google/android/gms/internal/zzbou;

    return-object v0
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/zzboq;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbV:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/zzboq;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXM()V

    return-void
.end method

.method static synthetic zzo(Lcom/google/android/gms/internal/zzboq;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbW:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzp(Lcom/google/android/gms/internal/zzboq;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXN()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public initialize()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXD()V

    return-void
.end method

.method public interrupt(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "Connection interrupted for: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbM:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbP:Lcom/google/android/gms/internal/zzboj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbP:Lcom/google/android/gms/internal/zzboj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzboj;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbP:Lcom/google/android/gms/internal/zzboj;

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcca:Lcom/google/android/gms/internal/zzbou;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbou;->zzVU()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcca:Lcom/google/android/gms/internal/zzbou;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbou;->cancel()V

    sget-object v0, Lcom/google/android/gms/internal/zzboq$zzb;->zzccq:Lcom/google/android/gms/internal/zzboq$zzb;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbQ:Lcom/google/android/gms/internal/zzboq$zzb;

    goto :goto_1
.end method

.method public isInterrupted(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbM:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public purgeOutstandingWrites()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbV:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzboq$zzf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzboq$zzf;->zza(Lcom/google/android/gms/internal/zzboq$zzf;)Lcom/google/android/gms/internal/zzbos;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzboq$zzf;->zza(Lcom/google/android/gms/internal/zzboq$zzf;)Lcom/google/android/gms/internal/zzbos;

    move-result-object v0

    const-string v2, "write_canceled"

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzbos;->zzar(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzboq$zzd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzboq$zzd;->zza(Lcom/google/android/gms/internal/zzboq$zzd;)Lcom/google/android/gms/internal/zzbos;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzboq$zzd;->zza(Lcom/google/android/gms/internal/zzboq$zzd;)Lcom/google/android/gms/internal/zzbos;

    move-result-object v0

    const-string v2, "write_canceled"

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzbos;->zzar(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbV:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXA()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzboq;->zzccg:Z

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXM()V

    return-void
.end method

.method public refreshAuthToken()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "Auth token refresh requested"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "token_refresh"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzboq;->interrupt(Ljava/lang/String;)V

    const-string v0, "token_refresh"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzboq;->resume(Ljava/lang/String;)V

    return-void
.end method

.method public resume(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "Connection no longer interrupted for: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbM:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzboq;->zzXC()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbQ:Lcom/google/android/gms/internal/zzboq$zzb;

    sget-object v1, Lcom/google/android/gms/internal/zzboq$zzb;->zzccq:Lcom/google/android/gms/internal/zzboq$zzb;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXD()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shutdown()V
    .locals 1

    const-string v0, "shutdown"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzboq;->interrupt(Ljava/lang/String;)V

    return-void
.end method

.method zzXC()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbM:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zza(Ljava/util/List;Lcom/google/android/gms/internal/zzbos;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/zzbos;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXB()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "oc"

    invoke-direct {p0, v0, p1, v3, p2}, Lcom/google/android/gms/internal/zzboq;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbos;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXM()V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/google/android/gms/internal/zzboq;->zzcbU:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/zzboq$zzd;

    const-string v1, "oc"

    move-object v2, p1

    move-object v4, p2

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzboq$zzd;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbos;Lcom/google/android/gms/internal/zzboq$1;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public zza(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbos;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzbos;",
            ")V"
        }
    .end annotation

    const-string v1, "p"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzboq;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/zzbos;)V

    return-void
.end method

.method public zza(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/zzbos;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbos;",
            ")V"
        }
    .end annotation

    const-string v1, "p"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzboq;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/zzbos;)V

    return-void
.end method

.method public zza(Ljava/util/List;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzboq$zzc;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzboq$zzc;-><init>(Ljava/util/List;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "unlistening on "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzboq;->zza(Lcom/google/android/gms/internal/zzboq$zzc;)Lcom/google/android/gms/internal/zzboq$zze;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXA()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzboq;->zza(Lcom/google/android/gms/internal/zzboq$zze;)V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXM()V

    return-void
.end method

.method public zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzboo;Ljava/lang/Long;Lcom/google/android/gms/internal/zzbos;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzboo;",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/internal/zzbos;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/internal/zzboq$zzc;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/zzboq$zzc;-><init>(Ljava/util/List;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xd

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Listening on "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbW:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    const-string v3, "listen() called twice for same QuerySpec."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/zzbom;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Adding listen query: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzboq$zze;

    const/4 v5, 0x0

    move-object v1, p5

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzboq$zze;-><init>(Lcom/google/android/gms/internal/zzbos;Lcom/google/android/gms/internal/zzboq$zzc;Ljava/lang/Long;Lcom/google/android/gms/internal/zzboo;Lcom/google/android/gms/internal/zzboq$1;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq;->zzcbW:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXA()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzboq;->zzb(Lcom/google/android/gms/internal/zzboq$zze;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXM()V

    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzbos;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzbos;",
            ")V"
        }
    .end annotation

    const-string v1, "m"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzboq;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/zzbos;)V

    return-void
.end method

.method public zzau(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "r"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "r"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzboq;->zzcbT:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzboq$zza;

    if-eqz v0, :cond_0

    const-string v1, "b"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzboq$zza;->zzaA(Ljava/util/Map;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "error"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "a"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "a"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "b"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzboq;->zzk(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ignoring unknown message: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzboj$zzb;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v3, "Got on disconnect due to "

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzboj$zzb;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzboq$zzb;->zzccq:Lcom/google/android/gms/internal/zzboq$zzb;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbQ:Lcom/google/android/gms/internal/zzboq$zzb;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbP:Lcom/google/android/gms/internal/zzboj;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzboq;->zzccg:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbT:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXE()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzboq;->zzXC()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzboq;->zzcbO:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzboq;->zzcbO:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_6

    const-wide/16 v4, 0x7530

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    sget-object v1, Lcom/google/android/gms/internal/zzboj$zzb;->zzcbw:Lcom/google/android/gms/internal/zzboj$zzb;

    if-eq p1, v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcca:Lcom/google/android/gms/internal/zzbou;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbou;->zzVU()V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXD()V

    :cond_3
    iput-wide v6, p0, Lcom/google/android/gms/internal/zzboq;->zzcbO:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbK:Lcom/google/android/gms/internal/zzbop$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbop$zza;->onDisconnect()V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public zzb(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbos;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzbos;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzboq;->zzccg:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXB()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "o"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzboq;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbos;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXM()V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/google/android/gms/internal/zzboq;->zzcbU:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/zzboq$zzd;

    const-string v1, "o"

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzboq$zzd;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbos;Lcom/google/android/gms/internal/zzboq$1;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public zzb(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzbos;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzbos;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzboq;->zzccg:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXB()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "om"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzboq;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbos;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXM()V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/google/android/gms/internal/zzboq;->zzcbU:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/zzboq$zzd;

    const-string v1, "om"

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzboq$zzd;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbos;Lcom/google/android/gms/internal/zzboq$1;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public zziJ(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzboq;->zzcbL:Ljava/lang/String;

    return-void
.end method

.method public zziK(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "Firebase Database connection was forcefully killed by the server. Will not attempt reconnect. Reason: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string v0, "server_kill"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzboq;->interrupt(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public zziN(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "Auth token refreshed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzboq;->zzcbX:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXA()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXF()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXH()V

    goto :goto_0
.end method

.method public zziO(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbQ:Lcom/google/android/gms/internal/zzboq$zzb;

    sget-object v3, Lcom/google/android/gms/internal/zzboq$zzb;->zzccr:Lcom/google/android/gms/internal/zzboq$zzb;

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Trying to open network connection while in the wrong state: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzboq;->zzcbQ:Lcom/google/android/gms/internal/zzboq$zzb;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/zzbom;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbK:Lcom/google/android/gms/internal/zzbop$zza;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzbop$zza;->zzbc(Z)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzboq;->zzcbX:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzboq$zzb;->zzccs:Lcom/google/android/gms/internal/zzboq$zzb;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbQ:Lcom/google/android/gms/internal/zzboq$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzboj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq;->zzcbZ:Lcom/google/android/gms/internal/zzbol;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzboq;->zzcbs:Lcom/google/android/gms/internal/zzbon;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzboq;->zzcbL:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzboq;->zzccb:Ljava/lang/String;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzboj;-><init>(Lcom/google/android/gms/internal/zzbol;Lcom/google/android/gms/internal/zzbon;Ljava/lang/String;Lcom/google/android/gms/internal/zzboj$zza;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbP:Lcom/google/android/gms/internal/zzboj;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbP:Lcom/google/android/gms/internal/zzboj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzboj;->open()V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public zzj(JLjava/lang/String;)V
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "onReady"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbO:J

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzboq;->zzaH(J)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbN:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXK()V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzboq;->zzXI()V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzboq;->zzcbN:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzboq;->zzccb:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq;->zzcbK:Lcom/google/android/gms/internal/zzbop$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbop$zza;->zzXz()V

    return-void
.end method
