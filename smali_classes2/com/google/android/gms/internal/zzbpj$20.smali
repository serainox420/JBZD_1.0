.class Lcom/google/android/gms/internal/zzbpj$20;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/firebase/database/d$a;Lcom/google/firebase/database/c;Lcom/google/android/gms/internal/zzbph;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzceH:Lcom/google/firebase/database/d$a;

.field final synthetic zzceZ:Lcom/google/firebase/database/c;

.field final synthetic zzcfa:Lcom/google/firebase/database/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/firebase/database/d$a;Lcom/google/firebase/database/c;Lcom/google/firebase/database/d;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpj$20;->zzceH:Lcom/google/firebase/database/d$a;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpj$20;->zzceZ:Lcom/google/firebase/database/c;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbpj$20;->zzcfa:Lcom/google/firebase/database/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$20;->zzceH:Lcom/google/firebase/database/d$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj$20;->zzceZ:Lcom/google/firebase/database/c;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpj$20;->zzcfa:Lcom/google/firebase/database/d;

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/d$a;->onComplete(Lcom/google/firebase/database/c;Lcom/google/firebase/database/d;)V

    return-void
.end method
