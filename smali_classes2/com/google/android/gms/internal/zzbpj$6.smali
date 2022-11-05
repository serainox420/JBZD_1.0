.class Lcom/google/android/gms/internal/zzbpj$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/firebase/database/m$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbZT:Lcom/google/firebase/database/m$a;

.field final synthetic zzceJ:Lcom/google/firebase/database/c;

.field final synthetic zzceK:Lcom/google/firebase/database/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/firebase/database/m$a;Lcom/google/firebase/database/c;Lcom/google/firebase/database/b;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpj$6;->zzbZT:Lcom/google/firebase/database/m$a;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpj$6;->zzceJ:Lcom/google/firebase/database/c;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbpj$6;->zzceK:Lcom/google/firebase/database/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$6;->zzbZT:Lcom/google/firebase/database/m$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj$6;->zzceJ:Lcom/google/firebase/database/c;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpj$6;->zzceK:Lcom/google/firebase/database/b;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/firebase/database/m$a;->a(Lcom/google/firebase/database/c;ZLcom/google/firebase/database/b;)V

    return-void
.end method
