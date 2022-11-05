.class Lcom/google/android/gms/internal/zzbpj$12;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbow$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpj;->zzYX()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzceE:Lcom/google/android/gms/internal/zzbpj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpj$12;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zziU(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$12;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpj;->zzb(Lcom/google/android/gms/internal/zzbpj;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object v0

    const-string v1, "Auth token changed, triggering auth token refresh"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$12;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpj;->zzc(Lcom/google/android/gms/internal/zzbpj;)Lcom/google/android/gms/internal/zzbop;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbop;->zziN(Ljava/lang/String;)V

    return-void
.end method
