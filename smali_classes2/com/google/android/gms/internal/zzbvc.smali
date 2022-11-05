.class public abstract Lcom/google/android/gms/internal/zzbvc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/zzbwj;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbwj;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzaO(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbuq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/android/gms/internal/zzbuq;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzbvy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbvy;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzbvc;->zza(Lcom/google/android/gms/internal/zzbwj;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbvy;->zzadJ()Lcom/google/android/gms/internal/zzbuq;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzbur;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbur;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract zzb(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbwh;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
