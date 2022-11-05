.class public final Lcom/google/android/gms/internal/zzbns;
.super Ljava/lang/Object;


# static fields
.field public static final zzbZA:Lcom/google/android/gms/internal/zzaqa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaqa",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbZB:Lcom/google/android/gms/internal/zzaqa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaqa",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbZC:Lcom/google/android/gms/internal/zzaqa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaqa",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbZp:Lcom/google/android/gms/internal/zzaqa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaqa",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbZq:Lcom/google/android/gms/internal/zzaqa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaqa",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbZr:Lcom/google/android/gms/internal/zzaqa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaqa",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbZs:Lcom/google/android/gms/internal/zzaqa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaqa",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbZt:Lcom/google/android/gms/internal/zzaqa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaqa",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbZu:Lcom/google/android/gms/internal/zzaqa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaqa",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbZv:Lcom/google/android/gms/internal/zzaqa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaqa",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbZw:Lcom/google/android/gms/internal/zzaqa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaqa",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbZx:Lcom/google/android/gms/internal/zzaqa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaqa",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbZy:Lcom/google/android/gms/internal/zzaqa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaqa",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbZz:Lcom/google/android/gms/internal/zzaqa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaqa",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x64

    const/4 v5, 0x5

    const/4 v4, 0x0

    const-string v0, "crash:enabled"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/zzaqa;->zzb(ILjava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/zzaqa$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbns;->zzbZp:Lcom/google/android/gms/internal/zzaqa;

    const-string v0, "crash:gateway_url"

    const-string v1, "https://mobilecrashreporting.googleapis.com/v1/crashes:batchCreate?key="

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/zzaqa;->zzc(ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaqa$zzd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbns;->zzbZq:Lcom/google/android/gms/internal/zzaqa;

    const-string v0, "crash:log_buffer_capacity"

    invoke-static {v4, v0, v6}, Lcom/google/android/gms/internal/zzaqa;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzaqa$zzb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbns;->zzbZr:Lcom/google/android/gms/internal/zzaqa;

    const-string v0, "crash:log_buffer_max_total_size"

    const v1, 0x8000

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/zzaqa;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzaqa$zzb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbns;->zzbZs:Lcom/google/android/gms/internal/zzaqa;

    const-string v0, "crash:crash_backlog_capacity"

    invoke-static {v4, v0, v5}, Lcom/google/android/gms/internal/zzaqa;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzaqa$zzb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbns;->zzbZt:Lcom/google/android/gms/internal/zzaqa;

    const-string v0, "crash:crash_backlog_max_age"

    const-wide/32 v2, 0x240c8400

    invoke-static {v4, v0, v2, v3}, Lcom/google/android/gms/internal/zzaqa;->zzb(ILjava/lang/String;J)Lcom/google/android/gms/internal/zzaqa$zzc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbns;->zzbZu:Lcom/google/android/gms/internal/zzaqa;

    const-string v0, "crash:starting_backoff"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v4, v0, v2, v3}, Lcom/google/android/gms/internal/zzaqa;->zzb(ILjava/lang/String;J)Lcom/google/android/gms/internal/zzaqa$zzc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbns;->zzbZv:Lcom/google/android/gms/internal/zzaqa;

    const-string v0, "crash:backoff_limit"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v4, v0, v2, v3}, Lcom/google/android/gms/internal/zzaqa;->zzb(ILjava/lang/String;J)Lcom/google/android/gms/internal/zzaqa$zzc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbns;->zzbZw:Lcom/google/android/gms/internal/zzaqa;

    const-string v0, "crash:retry_num_attempts"

    const/16 v1, 0xc

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/zzaqa;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzaqa$zzb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbns;->zzbZx:Lcom/google/android/gms/internal/zzaqa;

    const-string v0, "crash:batch_size"

    invoke-static {v4, v0, v5}, Lcom/google/android/gms/internal/zzaqa;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzaqa$zzb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbns;->zzbZy:Lcom/google/android/gms/internal/zzaqa;

    const-string v0, "crash:batch_throttle"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v4, v0, v2, v3}, Lcom/google/android/gms/internal/zzaqa;->zzb(ILjava/lang/String;J)Lcom/google/android/gms/internal/zzaqa$zzc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbns;->zzbZz:Lcom/google/android/gms/internal/zzaqa;

    const-string v0, "crash:frame_depth"

    const/16 v1, 0x3c

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/zzaqa;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzaqa$zzb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbns;->zzbZA:Lcom/google/android/gms/internal/zzaqa;

    const-string v0, "crash:receiver_delay"

    invoke-static {v4, v0, v6}, Lcom/google/android/gms/internal/zzaqa;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzaqa$zzb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbns;->zzbZB:Lcom/google/android/gms/internal/zzaqa;

    const-string v0, "crash:thread_idle_timeout"

    const/16 v1, 0xa

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/zzaqa;->zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzaqa$zzb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbns;->zzbZC:Lcom/google/android/gms/internal/zzaqa;

    return-void
.end method

.method public static final initialize(Landroid/content/Context;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/zzaqe;->zzDE()Lcom/google/android/gms/internal/zzaqb;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzaqb;->initialize(Landroid/content/Context;)V

    return-void
.end method
