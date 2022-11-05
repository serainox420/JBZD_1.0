.class public Lcom/google/android/gms/internal/zzboa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzboa$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final zzcaW:Lcom/google/android/gms/internal/zzbny;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbny",
            "<TT;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbny;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbny",
            "<TT;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzboa;->zzcaW:Lcom/google/android/gms/internal/zzbny;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzbny$zza;->zzWW()Lcom/google/android/gms/internal/zzbny$zza$zza;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/zzbny$zza;->zzb(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzbny$zza$zza;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzbny;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboa;->zzcaW:Lcom/google/android/gms/internal/zzbny;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzboa$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboa;->zzcaW:Lcom/google/android/gms/internal/zzbny;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbny;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzboa$zza;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public zzWV()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzboa$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboa;->zzcaW:Lcom/google/android/gms/internal/zzbny;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbny;->zzWV()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzboa$zza;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public zzWX()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboa;->zzcaW:Lcom/google/android/gms/internal/zzbny;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbny;->zzWT()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public zzWY()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboa;->zzcaW:Lcom/google/android/gms/internal/zzbny;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbny;->zzWU()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public zzal(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzboa;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/android/gms/internal/zzboa",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboa;->zzcaW:Lcom/google/android/gms/internal/zzbny;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbny;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbny;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboa;->zzcaW:Lcom/google/android/gms/internal/zzbny;

    if-ne v0, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/zzboa;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzboa;-><init>(Lcom/google/android/gms/internal/zzbny;)V

    goto :goto_0
.end method

.method public zzam(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzboa;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/android/gms/internal/zzboa",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzboa;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboa;->zzcaW:Lcom/google/android/gms/internal/zzbny;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/zzbny;->zzi(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbny;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzboa;-><init>(Lcom/google/android/gms/internal/zzbny;)V

    return-object v0
.end method

.method public zzan(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboa;->zzcaW:Lcom/google/android/gms/internal/zzbny;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbny;->zzah(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
