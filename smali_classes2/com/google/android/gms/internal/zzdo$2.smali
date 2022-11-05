.class Lcom/google/android/gms/internal/zzdo$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdd$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdo;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzyJ:Lcom/google/android/gms/internal/zzdo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdo$2;->zzyJ:Lcom/google/android/gms/internal/zzdo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzk(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo$2;->zzyJ:Lcom/google/android/gms/internal/zzdo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdo;->zzb(Lcom/google/android/gms/internal/zzdo;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdo$2;->zzyJ:Lcom/google/android/gms/internal/zzdo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdo;->zza(Lcom/google/android/gms/internal/zzdo;)V

    goto :goto_0
.end method
