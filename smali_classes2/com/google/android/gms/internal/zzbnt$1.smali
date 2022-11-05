.class Lcom/google/android/gms/internal/zzbnt$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbnt;->zza(ZLcom/google/android/gms/internal/zzbow$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcav:Lcom/google/android/gms/internal/zzbow$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbnt;Lcom/google/android/gms/internal/zzbow$zza;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbnt$1;->zzcav:Lcom/google/android/gms/internal/zzbow$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private zza(Ljava/lang/Exception;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/firebase/FirebaseApiNotAvailableException;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbtk;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbnt$1;->zza(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnt$1;->zzcav:Lcom/google/android/gms/internal/zzbow$zza;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbow$zza;->zziL(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnt$1;->zzcav:Lcom/google/android/gms/internal/zzbow$zza;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbow$zza;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method
