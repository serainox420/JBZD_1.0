.class Lcom/google/android/gms/internal/zzbpj$8$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpj$8;->zzar(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzceK:Lcom/google/firebase/database/b;

.field final synthetic zzceN:Lcom/google/android/gms/internal/zzbpj$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpj$8;Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/firebase/database/b;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpj$8$1;->zzceN:Lcom/google/android/gms/internal/zzbpj$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpj$8$1;->zzceK:Lcom/google/firebase/database/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$8$1;->zzceN:Lcom/google/android/gms/internal/zzbpj$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpj$zza;->zzi(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/firebase/database/m$a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpj$8$1;->zzceK:Lcom/google/firebase/database/b;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/firebase/database/m$a;->a(Lcom/google/firebase/database/c;ZLcom/google/firebase/database/b;)V

    return-void
.end method
