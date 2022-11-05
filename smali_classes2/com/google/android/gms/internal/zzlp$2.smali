.class Lcom/google/android/gms/internal/zzlp$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlp;->zzco()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzPX:Lcom/google/android/gms/internal/zzlp;

.field final synthetic zzsX:Lcom/google/android/gms/internal/zzpb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlp;Lcom/google/android/gms/internal/zzpb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlp$2;->zzPX:Lcom/google/android/gms/internal/zzlp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlp$2;->zzsX:Lcom/google/android/gms/internal/zzpb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp$2;->zzPX:Lcom/google/android/gms/internal/zzlp;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzlp;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp$2;->zzPX:Lcom/google/android/gms/internal/zzlp;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlp$2;->zzsX:Lcom/google/android/gms/internal/zzpb;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzlp;->zzn(Lcom/google/android/gms/internal/zzpb;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
