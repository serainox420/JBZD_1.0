.class public final Lcom/google/android/gms/internal/zznj;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zznj$zza;
    }
.end annotation


# instance fields
.field private zzVb:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zznj$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zznj;->zzVb:Ljava/util/WeakHashMap;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zznj;)Ljava/util/WeakHashMap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznj;->zzVb:Ljava/util/WeakHashMap;

    return-object v0
.end method


# virtual methods
.method public zzA(Landroid/content/Context;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/zzni;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zznj$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zznj$1;-><init>(Lcom/google/android/gms/internal/zznj;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpn;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zzqm;

    move-result-object v0

    return-object v0
.end method
