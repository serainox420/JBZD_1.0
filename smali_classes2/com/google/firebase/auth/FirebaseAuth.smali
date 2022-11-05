.class public abstract Lcom/google/firebase/auth/FirebaseAuth;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbti;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/auth/FirebaseAuth$b;,
        Lcom/google/firebase/auth/FirebaseAuth$a;
    }
.end annotation


# static fields
.field private static zzbXK:Lcom/google/firebase/auth/FirebaseAuth;

.field private static zzbhH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/FirebaseAuth;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/auth/FirebaseAuth$a;",
            ">;"
        }
    .end annotation
.end field

.field private zzbXF:Lcom/google/firebase/a;

.field private zzbXG:Lcom/google/android/gms/internal/zzbls;

.field private zzbXH:Lcom/google/firebase/auth/d;

.field private zzbXI:Lcom/google/android/gms/internal/zzbnj;

.field private zzbXJ:Lcom/google/android/gms/internal/zzbnk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/f/a;

    invoke-direct {v0}, Landroid/support/v4/f/a;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/FirebaseAuth;->zzbhH:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/a;)V
    .locals 5

    invoke-static {p1}, Lcom/google/firebase/auth/FirebaseAuth;->zzb(Lcom/google/firebase/a;)Lcom/google/android/gms/internal/zzbls;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbnj;

    invoke-virtual {p1}, Lcom/google/firebase/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/zzblx;->zzVQ()Lcom/google/android/gms/internal/zzbuk;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbnj;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzbuk;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/auth/FirebaseAuth;-><init>(Lcom/google/firebase/a;Lcom/google/android/gms/internal/zzbls;Lcom/google/android/gms/internal/zzbnj;)V

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/a;Lcom/google/android/gms/internal/zzbls;Lcom/google/android/gms/internal/zzbnj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/a;

    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXF:Lcom/google/firebase/a;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbls;

    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXG:Lcom/google/android/gms/internal/zzbls;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbnj;

    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXI:Lcom/google/android/gms/internal/zzbnj;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->mListeners:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/zzbnk;->zzWu()Lcom/google/android/gms/internal/zzbnk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXJ:Lcom/google/android/gms/internal/zzbnk;

    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->zzVD()V

    return-void
.end method

.method public static getInstance()Lcom/google/firebase/auth/FirebaseAuth;
    .locals 1

    invoke-static {}, Lcom/google/firebase/a;->d()Lcom/google/firebase/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->zzc(Lcom/google/firebase/a;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/a;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-static {p0}, Lcom/google/firebase/auth/FirebaseAuth;->zzc(Lcom/google/firebase/a;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/a;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXF:Lcom/google/firebase/a;

    return-object v0
.end method

.method static zzb(Lcom/google/firebase/a;)Lcom/google/android/gms/internal/zzbls;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbma$zza$zza;

    invoke-virtual {p0}, Lcom/google/firebase/a;->c()Lcom/google/firebase/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbma$zza$zza;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbma$zza$zza;->zzVT()Lcom/google/android/gms/internal/zzbma$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzbma;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzbma$zza;)Lcom/google/android/gms/internal/zzbls;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method private static zzc(Lcom/google/firebase/a;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 1

    invoke-static {p0}, Lcom/google/firebase/auth/FirebaseAuth;->zzd(Lcom/google/firebase/a;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/d;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXH:Lcom/google/firebase/auth/d;

    return-object v0
.end method

.method private static declared-synchronized zzd(Lcom/google/firebase/a;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 4

    const-class v1, Lcom/google/firebase/auth/FirebaseAuth;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/firebase/auth/FirebaseAuth;->zzbhH:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/firebase/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzbne;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbne;-><init>(Lcom/google/firebase/a;)V

    invoke-virtual {p0, v0}, Lcom/google/firebase/a;->a(Lcom/google/android/gms/internal/zzbti;)V

    sget-object v2, Lcom/google/firebase/auth/FirebaseAuth;->zzbXK:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v2, :cond_0

    sput-object v0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXK:Lcom/google/firebase/auth/FirebaseAuth;

    :cond_0
    sget-object v2, Lcom/google/firebase/auth/FirebaseAuth;->zzbhH:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/firebase/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addAuthStateListener(Lcom/google/firebase/auth/FirebaseAuth$a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXJ:Lcom/google/android/gms/internal/zzbnk;

    new-instance v1, Lcom/google/firebase/auth/FirebaseAuth$1;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/auth/FirebaseAuth$1;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseAuth$a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbnk;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public applyActionCode(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXG:Lcom/google/android/gms/internal/zzbls;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXF:Lcom/google/firebase/a;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzbls;->zze(Lcom/google/firebase/a;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public checkActionCode(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXG:Lcom/google/android/gms/internal/zzbls;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXF:Lcom/google/firebase/a;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzbls;->zzd(Lcom/google/firebase/a;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public confirmPasswordReset(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXG:Lcom/google/android/gms/internal/zzbls;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXF:Lcom/google/firebase/a;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/firebase/a;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public createUserWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXG:Lcom/google/android/gms/internal/zzbls;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXF:Lcom/google/firebase/a;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$b;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$b;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/firebase/a;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public fetchProvidersForEmail(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXG:Lcom/google/android/gms/internal/zzbls;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXF:Lcom/google/firebase/a;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/firebase/a;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUser()Lcom/google/firebase/auth/d;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXH:Lcom/google/firebase/auth/d;

    return-object v0
.end method

.method public removeAuthStateListener(Lcom/google/firebase/auth/FirebaseAuth$a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendPasswordResetEmail(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXG:Lcom/google/android/gms/internal/zzbls;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXF:Lcom/google/firebase/a;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzbls;->zzb(Lcom/google/firebase/a;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public signInAnonymously()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXH:Lcom/google/firebase/auth/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXH:Lcom/google/firebase/auth/d;

    invoke-virtual {v0}, Lcom/google/firebase/auth/d;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXH:Lcom/google/firebase/auth/d;

    check-cast v0, Lcom/google/android/gms/internal/zzbnf;

    new-instance v1, Lcom/google/android/gms/internal/zzbnc;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbnc;-><init>(Lcom/google/android/gms/internal/zzbnf;)V

    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXG:Lcom/google/android/gms/internal/zzbls;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXF:Lcom/google/firebase/a;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$b;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$b;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/firebase/a;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public signInWithCredential(Lcom/google/firebase/auth/a;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/a;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/google/firebase/auth/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/firebase/auth/b;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXG:Lcom/google/android/gms/internal/zzbls;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXF:Lcom/google/firebase/a;

    invoke-virtual {p1}, Lcom/google/firebase/auth/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/auth/b;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/firebase/auth/FirebaseAuth$b;

    invoke-direct {v4, p0}, Lcom/google/firebase/auth/FirebaseAuth$b;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbls;->zzb(Lcom/google/firebase/a;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXG:Lcom/google/android/gms/internal/zzbls;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXF:Lcom/google/firebase/a;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$b;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$b;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/firebase/a;Lcom/google/firebase/auth/a;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public signInWithCustomToken(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXG:Lcom/google/android/gms/internal/zzbls;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXF:Lcom/google/firebase/a;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$b;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$b;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/firebase/a;Ljava/lang/String;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public signInWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXG:Lcom/google/android/gms/internal/zzbls;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXF:Lcom/google/firebase/a;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$b;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$b;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/zzbls;->zzb(Lcom/google/firebase/a;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public signOut()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->zzVC()V

    return-void
.end method

.method public verifyPasswordResetCode(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXG:Lcom/google/android/gms/internal/zzbls;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXF:Lcom/google/firebase/a;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzbls;->zzf(Lcom/google/firebase/a;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zzVC()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXH:Lcom/google/firebase/auth/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXI:Lcom/google/android/gms/internal/zzbnj;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXH:Lcom/google/firebase/auth/d;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbnj;->zzh(Lcom/google/firebase/auth/d;)V

    iput-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXH:Lcom/google/firebase/auth/d;

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXI:Lcom/google/android/gms/internal/zzbnj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbnj;->zzWt()V

    invoke-virtual {p0, v2}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/d;)V

    return-void
.end method

.method protected zzVD()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXI:Lcom/google/android/gms/internal/zzbnj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbnj;->zzWs()Lcom/google/firebase/auth/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXH:Lcom/google/firebase/auth/d;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXH:Lcom/google/firebase/auth/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXI:Lcom/google/android/gms/internal/zzbnj;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXH:Lcom/google/firebase/auth/d;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbnj;->zzg(Lcom/google/firebase/auth/d;)Lcom/google/android/gms/internal/zzbmn;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXH:Lcom/google/firebase/auth/d;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/d;Lcom/google/android/gms/internal/zzbmn;Z)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/firebase/auth/d;Lcom/google/firebase/auth/UserProfileChangeRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/d;",
            "Lcom/google/firebase/auth/UserProfileChangeRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXG:Lcom/google/android/gms/internal/zzbls;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXF:Lcom/google/firebase/a;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$b;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$b;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/firebase/a;Lcom/google/firebase/auth/d;Lcom/google/firebase/auth/UserProfileChangeRequest;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/firebase/auth/d;Lcom/google/firebase/auth/a;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/d;",
            "Lcom/google/firebase/auth/a;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/google/firebase/auth/b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Lcom/google/firebase/auth/b;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXG:Lcom/google/android/gms/internal/zzbls;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXF:Lcom/google/firebase/a;

    invoke-virtual {p2}, Lcom/google/firebase/auth/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/firebase/auth/b;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/firebase/auth/FirebaseAuth$b;

    invoke-direct {v5, p0}, Lcom/google/firebase/auth/FirebaseAuth$b;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/firebase/a;Lcom/google/firebase/auth/d;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXG:Lcom/google/android/gms/internal/zzbls;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXF:Lcom/google/firebase/a;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$b;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$b;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/firebase/a;Lcom/google/firebase/auth/d;Lcom/google/firebase/auth/a;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public zza(Lcom/google/firebase/auth/d;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/d;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXG:Lcom/google/android/gms/internal/zzbls;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXF:Lcom/google/firebase/a;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$b;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$b;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/zzbls;->zzd(Lcom/google/firebase/a;Lcom/google/firebase/auth/d;Ljava/lang/String;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/firebase/auth/d;Z)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/d;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/firebase/auth/e;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x4457

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzblv;->zzce(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXH:Lcom/google/firebase/auth/d;

    invoke-virtual {v0}, Lcom/google/firebase/auth/d;->zzVG()Lcom/google/android/gms/internal/zzbmn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbmn;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Lcom/google/firebase/auth/e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbmn;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/firebase/auth/e;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXG:Lcom/google/android/gms/internal/zzbls;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXF:Lcom/google/firebase/a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbmn;->zzWc()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/google/firebase/auth/FirebaseAuth$3;

    invoke-direct {v3, p0}, Lcom/google/firebase/auth/FirebaseAuth$3;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/firebase/a;Lcom/google/firebase/auth/d;Ljava/lang/String;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public zza(Lcom/google/firebase/auth/d;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "FirebaseAuth"

    invoke-virtual {p1}, Lcom/google/firebase/auth/d;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Notifying listeners about user ( "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/auth/d;->zzVI()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/zzbtj;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbtj;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXJ:Lcom/google/android/gms/internal/zzbnk;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$2;

    invoke-direct {v2, p0, v1}, Lcom/google/firebase/auth/FirebaseAuth$2;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/android/gms/internal/zzbtj;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzbnk;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string v0, "FirebaseAuth"

    const-string v1, "Notifying listeners about a sign-out event."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public zza(Lcom/google/firebase/auth/d;Lcom/google/android/gms/internal/zzbmn;Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXH:Lcom/google/firebase/auth/d;

    if-nez v0, :cond_4

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p3, v2}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/d;ZZ)V

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXH:Lcom/google/firebase/auth/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXH:Lcom/google/firebase/auth/d;

    invoke-virtual {v0, p2}, Lcom/google/firebase/auth/d;->zza(Lcom/google/android/gms/internal/zzbmn;)V

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXH:Lcom/google/firebase/auth/d;

    invoke-virtual {p0, v0}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/d;)V

    :cond_2
    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXI:Lcom/google/android/gms/internal/zzbnj;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzbnj;->zza(Lcom/google/firebase/auth/d;Lcom/google/android/gms/internal/zzbmn;)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXH:Lcom/google/firebase/auth/d;

    invoke-virtual {v0}, Lcom/google/firebase/auth/d;->zzVG()Lcom/google/android/gms/internal/zzbmn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbmn;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbmn;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXH:Lcom/google/firebase/auth/d;

    invoke-virtual {v3}, Lcom/google/firebase/auth/d;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/firebase/auth/d;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public zza(Lcom/google/firebase/auth/d;ZZ)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXH:Lcom/google/firebase/auth/d;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXH:Lcom/google/firebase/auth/d;

    :goto_0
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXI:Lcom/google/android/gms/internal/zzbnj;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXH:Lcom/google/firebase/auth/d;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbnj;->zzf(Lcom/google/firebase/auth/d;)V

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXH:Lcom/google/firebase/auth/d;

    invoke-virtual {p0, v0}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/d;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXH:Lcom/google/firebase/auth/d;

    invoke-virtual {p1}, Lcom/google/firebase/auth/d;->isAnonymous()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/d;->zzaY(Z)Lcom/google/firebase/auth/d;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXH:Lcom/google/firebase/auth/d;

    invoke-virtual {p1}, Lcom/google/firebase/auth/d;->getProviderData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/d;->zzU(Ljava/util/List;)Lcom/google/firebase/auth/d;

    goto :goto_0
.end method

.method public zzaX(Z)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/firebase/auth/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXH:Lcom/google/firebase/auth/d;

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/d;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Lcom/google/firebase/auth/d;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/d;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXG:Lcom/google/android/gms/internal/zzbls;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXF:Lcom/google/firebase/a;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$b;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$b;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzbls;->zzb(Lcom/google/firebase/a;Lcom/google/firebase/auth/d;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Lcom/google/firebase/auth/d;Lcom/google/firebase/auth/a;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/d;",
            "Lcom/google/firebase/auth/a;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXG:Lcom/google/android/gms/internal/zzbls;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXF:Lcom/google/firebase/a;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$b;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$b;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/zzbls;->zzb(Lcom/google/firebase/a;Lcom/google/firebase/auth/d;Lcom/google/firebase/auth/a;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Lcom/google/firebase/auth/d;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/d;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXG:Lcom/google/android/gms/internal/zzbls;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXF:Lcom/google/firebase/a;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$b;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$b;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/zzbls;->zzb(Lcom/google/firebase/a;Lcom/google/firebase/auth/d;Ljava/lang/String;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zzc(Lcom/google/firebase/auth/d;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/d;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXG:Lcom/google/android/gms/internal/zzbls;

    new-instance v1, Lcom/google/firebase/auth/FirebaseAuth$4;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/auth/FirebaseAuth$4;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/d;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/firebase/auth/d;Lcom/google/android/gms/internal/zzbni;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zzc(Lcom/google/firebase/auth/d;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/d;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXG:Lcom/google/android/gms/internal/zzbls;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXF:Lcom/google/firebase/a;

    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$b;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$b;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/zzbls;->zzc(Lcom/google/firebase/a;Lcom/google/firebase/auth/d;Ljava/lang/String;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zziw(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXG:Lcom/google/android/gms/internal/zzbls;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->zzbXF:Lcom/google/firebase/a;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzbls;->zzc(Lcom/google/firebase/a;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
