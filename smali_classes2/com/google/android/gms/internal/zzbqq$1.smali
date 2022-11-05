.class Lcom/google/android/gms/internal/zzbqq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbqq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbqq;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzbqq$zza",
        "<TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzchA:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbqq;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbqq$1;->zzchA:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbqq$1;->zza(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Object;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Object;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            "TT;",
            "Ljava/lang/Void;",
            ")",
            "Ljava/lang/Void;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqq$1;->zzchA:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return-object v0
.end method
