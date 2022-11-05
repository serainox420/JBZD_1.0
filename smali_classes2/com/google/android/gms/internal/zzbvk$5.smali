.class Lcom/google/android/gms/internal/zzbvk$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbvp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbvk;->zzb(Lcom/google/android/gms/internal/zzbwg;)Lcom/google/android/gms/internal/zzbvp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzbvp",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic zzcpP:Ljava/lang/reflect/Type;

.field final synthetic zzcpQ:Lcom/google/android/gms/internal/zzbvk;

.field final synthetic zzcpT:Lcom/google/android/gms/internal/zzbum;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbvk;Lcom/google/android/gms/internal/zzbum;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbvk$5;->zzcpQ:Lcom/google/android/gms/internal/zzbvk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbvk$5;->zzcpT:Lcom/google/android/gms/internal/zzbum;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbvk$5;->zzcpP:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzady()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvk$5;->zzcpT:Lcom/google/android/gms/internal/zzbum;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbvk$5;->zzcpP:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbum;->zza(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
