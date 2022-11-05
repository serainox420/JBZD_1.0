.class Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding$5;
.super Lbutterknife/internal/a;
.source "SettingsFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;-><init>(Lpl/jbzd/app/view/settings/SettingsFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lpl/jbzd/app/view/settings/SettingsFragment;

.field final synthetic c:Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;Lpl/jbzd/app/view/settings/SettingsFragment;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding$5;->c:Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;

    iput-object p2, p0, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding$5;->b:Lpl/jbzd/app/view/settings/SettingsFragment;

    invoke-direct {p0}, Lbutterknife/internal/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding$5;->b:Lpl/jbzd/app/view/settings/SettingsFragment;

    invoke-virtual {v0, p1}, Lpl/jbzd/app/view/settings/SettingsFragment;->gotoGooglePlay(Landroid/view/View;)V

    .line 76
    return-void
.end method
