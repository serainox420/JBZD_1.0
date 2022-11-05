.class final Lcom/google/android/gms/internal/zzbrr$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbrr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gms/internal/zzbrq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/zzbrq;

    check-cast p2, Lcom/google/android/gms/internal/zzbrq;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbrr$1;->zza(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbrq;)I

    move-result v0

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbrq;)I
    .locals 1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzbrq;->zzi(Lcom/google/android/gms/internal/zzbrq;)I

    move-result v0

    return v0
.end method
