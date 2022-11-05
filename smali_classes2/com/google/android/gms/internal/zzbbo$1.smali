.class Lcom/google/android/gms/internal/zzbbo$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbbo;->zza(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbGt:J

.field final synthetic zzbJL:Lcom/google/android/gms/internal/zzbbn;

.field final synthetic zzbJM:Ljava/lang/String;

.field final synthetic zzbJN:Ljava/lang/String;

.field final synthetic zzbJO:Ljava/util/Map;

.field final synthetic zzbJP:Ljava/lang/String;

.field final synthetic zzbJQ:Lcom/google/android/gms/internal/zzbbo;

.field final synthetic zzsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbbo;Lcom/google/android/gms/internal/zzbbn;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbo$1;->zzbJQ:Lcom/google/android/gms/internal/zzbbo;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbbo$1;->zzbJL:Lcom/google/android/gms/internal/zzbbn;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzbbo$1;->zzbGt:J

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbbo$1;->zzsg:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbbo$1;->zzbJM:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzbbo$1;->zzbJN:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzbbo$1;->zzbJO:Ljava/util/Map;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzbbo$1;->zzbJP:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbo$1;->zzbJQ:Lcom/google/android/gms/internal/zzbbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbo;->zza(Lcom/google/android/gms/internal/zzbbo;)Lcom/google/android/gms/internal/zzbbp;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbcg;->zzSr()Lcom/google/android/gms/internal/zzbcg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbbo$1;->zzbJQ:Lcom/google/android/gms/internal/zzbbo;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbbo;->zzb(Lcom/google/android/gms/internal/zzbbo;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbbo$1;->zzbJL:Lcom/google/android/gms/internal/zzbbn;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbcg;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzbbn;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbbo$1;->zzbJQ:Lcom/google/android/gms/internal/zzbbo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbcg;->zzSs()Lcom/google/android/gms/internal/zzbbp;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzbbo;->zza(Lcom/google/android/gms/internal/zzbbo;Lcom/google/android/gms/internal/zzbbp;)Lcom/google/android/gms/internal/zzbbp;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbo$1;->zzbJQ:Lcom/google/android/gms/internal/zzbbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbo;->zza(Lcom/google/android/gms/internal/zzbbo;)Lcom/google/android/gms/internal/zzbbp;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbbo$1;->zzbGt:J

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbbo$1;->zzsg:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbbo$1;->zzbJM:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzbbo$1;->zzbJN:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzbbo$1;->zzbJO:Ljava/util/Map;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzbbo$1;->zzbJP:Ljava/lang/String;

    invoke-interface/range {v1 .. v8}, Lcom/google/android/gms/internal/zzbbp;->zza(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
