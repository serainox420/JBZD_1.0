.class Lcom/google/android/gms/internal/zzbig$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbig;->zzg(Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbMk:Ljava/lang/String;

.field final synthetic zzbMm:Lcom/google/android/gms/internal/zzbig;

.field final synthetic zzbMo:[B


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbig;Ljava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbig$4;->zzbMm:Lcom/google/android/gms/internal/zzbig;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbig$4;->zzbMk:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbig$4;->zzbMo:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbig$4;->zzbMm:Lcom/google/android/gms/internal/zzbig;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbig$4;->zzbMk:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbig$4;->zzbMo:[B

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbig;->zzh(Ljava/lang/String;[B)V

    return-void
.end method
