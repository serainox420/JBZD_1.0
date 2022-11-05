.class Lcom/google/android/gms/internal/zzbqn$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbqq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbqn;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbqq$zza;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic zzchl:Lcom/google/android/gms/internal/zzbqq$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbqn;Lcom/google/android/gms/internal/zzbqq$zza;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbqn$3;->zzchl:Lcom/google/android/gms/internal/zzbqq$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Boolean;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            "Ljava/lang/Boolean;",
            "TT;)TT;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqn$3;->zzchl:Lcom/google/android/gms/internal/zzbqq$zza;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p3}, Lcom/google/android/gms/internal/zzbqq$zza;->zza(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_0
    return-object p3
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbqn$3;->zza(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Boolean;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
