.class public Lcom/google/android/gms/internal/zzbbc;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzFB:Ljava/util/concurrent/ExecutorService;

.field private final zzbJi:Lcom/google/android/gms/internal/zzbib;

.field private final zzbJl:Lcom/google/android/gms/tagmanager/zzbb;

.field private final zzbJt:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzbJu:Lcom/google/android/gms/tagmanager/zzay;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;)V
    .locals 7

    new-instance v4, Lcom/google/android/gms/internal/zzbib;

    invoke-direct {v4, p1}, Lcom/google/android/gms/internal/zzbib;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbcl;->zzcg(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/zzbcl;->zzSw()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzbbc;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;Lcom/google/android/gms/internal/zzbib;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;Lcom/google/android/gms/internal/zzbib;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbbc;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzbb;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbbc;->zzbJl:Lcom/google/android/gms/tagmanager/zzbb;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzay;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbbc;->zzbJu:Lcom/google/android/gms/tagmanager/zzay;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbib;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbbc;->zzbJi:Lcom/google/android/gms/internal/zzbib;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbbc;->zzFB:Ljava/util/concurrent/ExecutorService;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbbc;->zzbJt:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public zzq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbbb;
    .locals 12

    new-instance v5, Lcom/google/android/gms/internal/zzbcc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbc;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbbc;->zzbJl:Lcom/google/android/gms/tagmanager/zzbb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbbc;->zzbJu:Lcom/google/android/gms/tagmanager/zzay;

    invoke-direct {v5, v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzbcc;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;Ljava/lang/String;)V

    new-instance v11, Lcom/google/android/gms/internal/zzbbd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbc;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0, p1}, Lcom/google/android/gms/internal/zzbbd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzbbb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbbc;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzbbc;->zzbJi:Lcom/google/android/gms/internal/zzbib;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzbbc;->zzFB:Ljava/util/concurrent/ExecutorService;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzbbc;->zzbJt:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v9, p0, Lcom/google/android/gms/internal/zzbbc;->zzbJl:Lcom/google/android/gms/tagmanager/zzbb;

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzzc()Lcom/google/android/gms/common/util/zze;

    move-result-object v10

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/zzbbb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbcc;Lcom/google/android/gms/internal/zzbib;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/internal/zzbbd;)V

    return-object v0
.end method
