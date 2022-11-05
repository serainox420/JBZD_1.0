.class Lcom/google/android/gms/internal/zzbig$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbig;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbia;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbMk:Ljava/lang/String;

.field final synthetic zzbMl:Lcom/google/android/gms/internal/zzbia;

.field final synthetic zzbMm:Lcom/google/android/gms/internal/zzbig;

.field final synthetic zzbMn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbig;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbia;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbig$3;->zzbMm:Lcom/google/android/gms/internal/zzbig;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbig$3;->zzbMk:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbig$3;->zzbMn:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbig$3;->zzbMl:Lcom/google/android/gms/internal/zzbia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbig$3;->zzbMm:Lcom/google/android/gms/internal/zzbig;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbig$3;->zzbMk:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbig$3;->zzbMn:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbig$3;->zzbMl:Lcom/google/android/gms/internal/zzbia;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzbig;->zzb(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbia;)V

    return-void
.end method
