.class Lcom/google/android/gms/internal/zzbnw$1;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzcaI:Lcom/google/android/gms/internal/zzbqq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbnw;Lcom/google/android/gms/internal/zzbqq;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbnw$1;->zzcaI:Lcom/google/android/gms/internal/zzbqq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Void;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnw$1;->zzcaI:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbqq;->zzK(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/Void;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbnw$1;->zza(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Void;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
