.class Lcom/google/android/gms/internal/zzbvo$zzb$1;
.super Lcom/google/android/gms/internal/zzbvo$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbvo$zzb;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbvo$zzc",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic zzcqo:Lcom/google/android/gms/internal/zzbvo$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbvo$zzb;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbvo$zzb$1;->zzcqo:Lcom/google/android/gms/internal/zzbvo$zzb;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbvo$zzb;->zzcqm:Lcom/google/android/gms/internal/zzbvo;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzbvo$zzc;-><init>(Lcom/google/android/gms/internal/zzbvo;Lcom/google/android/gms/internal/zzbvo$1;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbvo$zzb$1;->zzadA()Lcom/google/android/gms/internal/zzbvo$zzd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbvo$zzd;->zzcbc:Ljava/lang/Object;

    return-object v0
.end method
