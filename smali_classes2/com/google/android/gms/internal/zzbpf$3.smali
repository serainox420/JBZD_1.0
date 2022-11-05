.class Lcom/google/android/gms/internal/zzbpf$3;
.super Lcom/google/android/gms/internal/zzbsy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpf;->zzb(Lcom/google/android/gms/internal/zzbpa;)Lcom/google/android/gms/internal/zzbpm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcaA:Lcom/google/android/gms/internal/zzbrn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpf;Lcom/google/android/gms/internal/zzbrn;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpf$3;->zzcaA:Lcom/google/android/gms/internal/zzbrn;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbsy;-><init>()V

    return-void
.end method


# virtual methods
.method protected getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbpf;->zzcef:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method protected zzYO()Lcom/google/android/gms/internal/zzbpt;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbpf;->zzceg:Lcom/google/android/gms/internal/zzbpt;

    return-object v0
.end method

.method public zzj(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpf$3;->zzcaA:Lcom/google/android/gms/internal/zzbrn;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbsy;->zzl(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzbrn;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
