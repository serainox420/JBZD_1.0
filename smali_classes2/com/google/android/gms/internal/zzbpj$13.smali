.class Lcom/google/android/gms/internal/zzbpj$13;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbqs$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpj;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzbqs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzbqs$zzb",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/gms/internal/zzbpj$zza;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic zzceE:Lcom/google/android/gms/internal/zzbpj;

.field final synthetic zzceL:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpj;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpj$13;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpj$13;->zzceL:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzd(Lcom/google/android/gms/internal/zzbqs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbqs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbpj$zza;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$13;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj$13;->zzceL:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbpj;Ljava/util/List;Lcom/google/android/gms/internal/zzbqs;)V

    return-void
.end method
