.class public final Lcom/google/android/gms/internal/zzbck;
.super Lcom/google/android/gms/internal/zzbbs$zza;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbJj:Ljava/util/concurrent/ExecutorService;

.field private final zzbJl:Lcom/google/android/gms/tagmanager/zzbb;

.field private final zzbLc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbbb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbLd:Lcom/google/android/gms/internal/zzbbc;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/internal/zzbbc;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbbs$zza;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbck;->zzbLc:Ljava/util/Map;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbck;->zzbJl:Lcom/google/android/gms/tagmanager/zzbb;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbck;->zzbLd:Lcom/google/android/gms/internal/zzbbc;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbck;->zzbJj:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbck;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbbc;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbbc;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbcl;->zzcg(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzbck;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/internal/zzbbc;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbck;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbck;->zzbLc:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzbck;)Lcom/google/android/gms/internal/zzbbc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbck;->zzbLd:Lcom/google/android/gms/internal/zzbbc;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzbck;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbck;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public dispatch()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbck;->zzbJj:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzbck$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbck$3;-><init>(Lcom/google/android/gms/internal/zzbck;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzSb()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbck;->zzbLc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbbi;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p4, p5}, Ljava/util/Date;-><init>(J)V

    iget-object v6, p0, Lcom/google/android/gms/internal/zzbck;->zzbJl:Lcom/google/android/gms/tagmanager/zzbb;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzbbi;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;ZLcom/google/android/gms/tagmanager/zzbb;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbck;->zzbJj:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/zzbck$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzbck$2;-><init>(Lcom/google/android/gms/internal/zzbck;Lcom/google/android/gms/internal/zzbbi;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbbr;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v6, p0, Lcom/google/android/gms/internal/zzbck;->zzbJj:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/google/android/gms/internal/zzbck$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbck$1;-><init>(Lcom/google/android/gms/internal/zzbck;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbbr;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzbck;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbbr;)V

    return-void
.end method
