.class public Lcom/google/android/gms/internal/zzaem;
.super Lcom/google/android/gms/internal/zzafb$zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaem$zza;
    }
.end annotation


# static fields
.field public static final zzaJj:Lcom/google/android/gms/internal/zzcj$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzcj$zza",
            "<",
            "Lcom/google/android/gms/awareness/fence/zza;",
            "Lcom/google/android/gms/internal/zzaem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final zzaJk:Lcom/google/android/gms/awareness/fence/zza;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaem$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaem$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaem;->zzaJj:Lcom/google/android/gms/internal/zzcj$zza;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/awareness/fence/zza;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzafb$zza;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/awareness/fence/zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaem;->zzaJk:Lcom/google/android/gms/awareness/fence/zza;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafn;->zza(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaem;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/awareness/fence/zza;Landroid/os/Looper;Lcom/google/android/gms/internal/zzaem$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzaem;-><init>(Lcom/google/android/gms/awareness/fence/zza;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaet;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaem;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzaem$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaem;->zzaJk:Lcom/google/android/gms/awareness/fence/zza;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/zzaem$zza;-><init>(Lcom/google/android/gms/awareness/fence/zza;Lcom/google/android/gms/internal/zzaet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaex;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "ContextFenceListenerWrapper"

    const-string v1, "Unexpected call to deprecated method onFenceTriggered() with %s."

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/zzcf;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzaem;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/zzaem$zza;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzaem;->zzaJk:Lcom/google/android/gms/awareness/fence/zza;

    new-instance v0, Lcom/google/android/gms/internal/zzaet;

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzaex;->zzaJy:Z

    invoke-static {v1}, Lcom/google/android/gms/awareness/fence/FenceState;->zzaf(Z)I

    move-result v1

    const-wide/16 v2, 0x0

    iget-object v4, p1, Lcom/google/android/gms/internal/zzaex;->zzaB:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaet;-><init>(IJLjava/lang/String;I)V

    invoke-direct {v7, v8, v0}, Lcom/google/android/gms/internal/zzaem$zza;-><init>(Lcom/google/android/gms/awareness/fence/zza;Lcom/google/android/gms/internal/zzaet;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
