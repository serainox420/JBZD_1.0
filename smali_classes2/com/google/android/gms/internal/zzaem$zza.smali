.class Lcom/google/android/gms/internal/zzaem$zza;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final zzaJk:Lcom/google/android/gms/awareness/fence/zza;

.field private final zzaJl:Lcom/google/android/gms/internal/zzaet;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/awareness/fence/zza;Lcom/google/android/gms/internal/zzaet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/awareness/fence/zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaem$zza;->zzaJk:Lcom/google/android/gms/awareness/fence/zza;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaet;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaem$zza;->zzaJl:Lcom/google/android/gms/internal/zzaet;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method
