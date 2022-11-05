.class Lcom/google/android/gms/internal/zzbnw$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbqq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbnw;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqq;Lcom/google/android/gms/internal/zzbqq;Lcom/google/android/gms/internal/zzbqn;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzbqq$zza",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzcaI:Lcom/google/android/gms/internal/zzbqq;

.field final synthetic zzcaJ:Ljava/util/List;

.field final synthetic zzcaK:Lcom/google/android/gms/internal/zzbph;

.field final synthetic zzcaL:Lcom/google/android/gms/internal/zzbsc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbnw;Lcom/google/android/gms/internal/zzbqq;Ljava/util/List;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbnw$2;->zzcaI:Lcom/google/android/gms/internal/zzbqq;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbnw$2;->zzcaJ:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbnw$2;->zzcaK:Lcom/google/android/gms/internal/zzbph;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbnw$2;->zzcaL:Lcom/google/android/gms/internal/zzbsc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/Void;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbnw$2;->zza(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Void;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Void;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnw$2;->zzcaI:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbqq;->zzK(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnw$2;->zzcaJ:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/internal/zzbtb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnw$2;->zzcaK:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzbph;->zzh(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbnw$2;->zzcaL:Lcom/google/android/gms/internal/zzbsc;

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/zzbsc;->zzO(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzbtb;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
