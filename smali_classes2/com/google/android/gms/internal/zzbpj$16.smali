.class Lcom/google/android/gms/internal/zzbpj$16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbqs;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzceO:Lcom/google/android/gms/internal/zzbpj$zza;

.field final synthetic zzceS:Lcom/google/firebase/database/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/firebase/database/c;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpj$16;->zzceO:Lcom/google/android/gms/internal/zzbpj$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpj$16;->zzceS:Lcom/google/firebase/database/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$16;->zzceO:Lcom/google/android/gms/internal/zzbpj$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpj$zza;->zzi(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/firebase/database/m$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj$16;->zzceS:Lcom/google/firebase/database/c;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/firebase/database/m$a;->a(Lcom/google/firebase/database/c;ZLcom/google/firebase/database/b;)V

    return-void
.end method
