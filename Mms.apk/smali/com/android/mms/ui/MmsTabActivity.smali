.class public Lcom/android/mms/ui/MmsTabActivity;
.super Landroid/app/Activity;
.source "MmsTabActivity.java"


# static fields
.field private static final cn:Lcom/android/mms/ui/MmsTabActivity$TabState;


# instance fields
.field private cd:Lcom/android/mms/ui/cV;

.field private ce:Landroid/support/v4/view/ViewPager;

.field private cf:Lcom/android/mms/ui/M;

.field private cg:Lcom/android/mms/ui/cx;

.field private ch:Z

.field private ci:Landroid/widget/SearchView;

.field private cj:Lcom/android/mms/ui/bv;

.field private ck:Lcom/android/mms/ui/dU;

.field private cl:Lcom/android/mms/ui/ck;

.field private cm:Lcom/android/mms/ui/SearchFragment;

.field private co:Lcom/android/mms/ui/MmsTabActivity$TabState;

.field cp:Landroid/widget/SearchView$OnQueryTextListener;

.field private h:Landroid/app/ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->qO:Lcom/android/mms/ui/MmsTabActivity$TabState;

    sput-object v0, Lcom/android/mms/ui/MmsTabActivity;->cn:Lcom/android/mms/ui/MmsTabActivity$TabState;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    new-instance v0, Lcom/android/mms/ui/cV;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/cV;-><init>(Lcom/android/mms/ui/MmsTabActivity;Lcom/android/mms/ui/dn;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cd:Lcom/android/mms/ui/cV;

    .line 38
    new-instance v0, Lcom/android/mms/ui/cx;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/cx;-><init>(Lcom/android/mms/ui/MmsTabActivity;Lcom/android/mms/ui/dn;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cg:Lcom/android/mms/ui/cx;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ch:Z

    .line 49
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity;->cn:Lcom/android/mms/ui/MmsTabActivity$TabState;

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->co:Lcom/android/mms/ui/MmsTabActivity$TabState;

    .line 484
    new-instance v0, Lcom/android/mms/ui/dn;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/dn;-><init>(Lcom/android/mms/ui/MmsTabActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cp:Landroid/widget/SearchView$OnQueryTextListener;

    return-void
.end method

.method static synthetic a(Lcom/android/mms/ui/MmsTabActivity;I)Landroid/app/Fragment;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsTabActivity;->l(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/mms/ui/MmsTabActivity;)Lcom/android/mms/ui/SearchFragment;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cm:Lcom/android/mms/ui/SearchFragment;

    return-object v0
.end method

.method private a(Landroid/view/Menu;IZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 368
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_0

    .line 370
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 372
    :cond_0
    return-void
.end method

.method private a(Lcom/android/mms/ui/MmsTabActivity$TabState;)V
    .locals 1
    .parameter

    .prologue
    .line 326
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->qQ:Lcom/android/mms/ui/MmsTabActivity$TabState;

    if-ne p1, v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->co:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsTabActivity;->l(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ck;

    invoke-virtual {v0}, Lcom/android/mms/ui/ck;->gM()V

    .line 329
    :cond_0
    return-void
.end method

.method private a(Lcom/android/mms/ui/MmsTabActivity$TabState;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->h:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 126
    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 127
    invoke-virtual {v0, p2}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 128
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->cd:Lcom/android/mms/ui/cV;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 129
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->h:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 130
    return-void
.end method

.method private a(Lcom/android/mms/ui/MmsTabActivity$TabState;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 305
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->co:Lcom/android/mms/ui/MmsTabActivity$TabState;

    if-ne p1, v0, :cond_1

    .line 323
    :goto_0
    return-void

    .line 309
    :cond_1
    iput-object p1, p0, Lcom/android/mms/ui/MmsTabActivity;->co:Lcom/android/mms/ui/MmsTabActivity$TabState;

    .line 311
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->co:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v0

    .line 312
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->h:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->h:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 314
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->h:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 317
    :cond_2
    if-eqz p2, :cond_3

    .line 318
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ce:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    .line 320
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->invalidateOptionsMenu()V

    .line 322
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsTabActivity;->a(Lcom/android/mms/ui/MmsTabActivity$TabState;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/mms/ui/MmsTabActivity;Lcom/android/mms/ui/MmsTabActivity$TabState;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MmsTabActivity;->a(Lcom/android/mms/ui/MmsTabActivity$TabState;Z)V

    return-void
.end method

.method static synthetic a(Lcom/android/mms/ui/MmsTabActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsTabActivity;->n(Z)V

    return-void
.end method

.method private ap()V
    .locals 4

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->h:Landroid/app/ActionBar;

    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->h:Landroid/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 104
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->h:Landroid/app/ActionBar;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 107
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->qO:Lcom/android/mms/ui/MmsTabActivity$TabState;

    const v1, 0x7f0a0117

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MmsTabActivity;->a(Lcom/android/mms/ui/MmsTabActivity$TabState;I)V

    .line 108
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->qP:Lcom/android/mms/ui/MmsTabActivity$TabState;

    const v1, 0x7f0a0118

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MmsTabActivity;->a(Lcom/android/mms/ui/MmsTabActivity$TabState;I)V

    .line 109
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->qQ:Lcom/android/mms/ui/MmsTabActivity$TabState;

    .line 112
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->h:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040041

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 115
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/4 v0, -0x1

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 116
    const v0, 0x7f0f00b8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ci:Landroid/widget/SearchView;

    .line 117
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ci:Landroid/widget/SearchView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ci:Landroid/widget/SearchView;

    const v3, 0x7f0a0101

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ci:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/mms/ui/MmsTabActivity;->cp:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->h:Landroid/app/ActionBar;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 122
    return-void
.end method

.method private aq()V
    .locals 5

    .prologue
    const v4, 0x7f0f0088

    .line 133
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 137
    const v0, 0x7f0f0089

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SearchFragment;

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cm:Lcom/android/mms/ui/SearchFragment;

    .line 139
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ce:Landroid/support/v4/view/ViewPager;

    .line 140
    new-instance v0, Lcom/android/mms/ui/M;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/M;-><init>(Lcom/android/mms/ui/MmsTabActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cf:Lcom/android/mms/ui/M;

    .line 141
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ce:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/android/mms/ui/MmsTabActivity;->cf:Lcom/android/mms/ui/M;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/a;)V

    .line 142
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ce:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/android/mms/ui/MmsTabActivity;->cg:Lcom/android/mms/ui/cx;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/D;)V

    .line 150
    const-string v0, "ConversationFragment"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/bv;

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cj:Lcom/android/mms/ui/bv;

    .line 152
    const-string v0, "BookmarkFragment"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/dU;

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ck:Lcom/android/mms/ui/dU;

    .line 154
    const-string v0, "FestivalFragment"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ck;

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cl:Lcom/android/mms/ui/ck;

    .line 157
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cj:Lcom/android/mms/ui/bv;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/android/mms/ui/bv;

    invoke-direct {v0}, Lcom/android/mms/ui/bv;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cj:Lcom/android/mms/ui/bv;

    .line 159
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cj:Lcom/android/mms/ui/bv;

    const-string v3, "ConversationFragment"

    invoke-virtual {v2, v4, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ck:Lcom/android/mms/ui/dU;

    if-nez v0, :cond_1

    .line 163
    new-instance v0, Lcom/android/mms/ui/dU;

    invoke-direct {v0}, Lcom/android/mms/ui/dU;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ck:Lcom/android/mms/ui/dU;

    .line 164
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ck:Lcom/android/mms/ui/dU;

    const-string v3, "BookmarkFragment"

    invoke-virtual {v2, v4, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cl:Lcom/android/mms/ui/ck;

    if-nez v0, :cond_2

    .line 168
    new-instance v0, Lcom/android/mms/ui/ck;

    invoke-direct {v0}, Lcom/android/mms/ui/ck;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cl:Lcom/android/mms/ui/ck;

    .line 169
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cl:Lcom/android/mms/ui/ck;

    const-string v3, "FestivalFragment"

    invoke-virtual {v2, v4, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cj:Lcom/android/mms/ui/bv;

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 174
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ck:Lcom/android/mms/ui/dU;

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cl:Lcom/android/mms/ui/ck;

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 176
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cm:Lcom/android/mms/ui/SearchFragment;

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 178
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 179
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 180
    return-void
.end method

.method private ar()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 436
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ch:Z

    if-eqz v0, :cond_1

    .line 437
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->at()V

    .line 440
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ci:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 441
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->h:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->h:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 453
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->as()V

    .line 454
    return-void

    .line 445
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->h:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 446
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->h:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 447
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->h:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->co:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 451
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ci:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewCollapsed()V

    goto :goto_0
.end method

.method private as()V
    .locals 5

    .prologue
    const/16 v1, 0x16

    .line 458
    .line 462
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->h:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v2, v0, 0x16

    .line 465
    const/4 v0, 0x0

    .line 466
    iget-boolean v3, p0, Lcom/android/mms/ui/MmsTabActivity;->ch:Z

    if-eqz v3, :cond_0

    move v0, v1

    .line 471
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MmsTabActivity;->h:Landroid/app/ActionBar;

    iget-boolean v4, p0, Lcom/android/mms/ui/MmsTabActivity;->ch:Z

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 473
    if-eq v2, v0, :cond_1

    .line 475
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->h:Landroid/app/ActionBar;

    invoke-virtual {v2, v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 477
    :cond_1
    return-void
.end method

.method private at()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ci:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 481
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ci:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 482
    return-void
.end method

.method private l(I)Landroid/app/Fragment;
    .locals 3
    .parameter

    .prologue
    .line 293
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->qO:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cj:Lcom/android/mms/ui/bv;

    .line 298
    :goto_0
    return-object v0

    .line 295
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->qP:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ck:Lcom/android/mms/ui/dU;

    goto :goto_0

    .line 297
    :cond_1
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->qQ:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->cl:Lcom/android/mms/ui/ck;

    goto :goto_0

    .line 301
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private n(Z)V
    .locals 3
    .parameter

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ch:Z

    if-eq v0, p1, :cond_0

    .line 421
    iput-boolean p1, p0, Lcom/android/mms/ui/MmsTabActivity;->ch:Z

    .line 422
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->ar()V

    .line 423
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ci:Landroid/widget/SearchView;

    if-nez v0, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ch:Z

    if-eqz v0, :cond_2

    .line 427
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->at()V

    .line 431
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ci:Landroid/widget/SearchView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ch:Z

    if-eqz v0, :cond_0

    .line 413
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsTabActivity;->n(Z)V

    .line 417
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 98
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f04002d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsTabActivity;->setContentView(I)V

    .line 76
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->ap()V

    .line 77
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->aq()V

    .line 78
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 334
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 376
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 400
    const/4 v0, 0x0

    .line 402
    :cond_0
    :goto_0
    return v0

    .line 378
    :sswitch_0
    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 381
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 382
    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MmsTabActivity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_0

    .line 385
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->onSearchRequested()Z

    goto :goto_0

    .line 389
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_FIREWALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 393
    :sswitch_4
    iget-boolean v1, p0, Lcom/android/mms/ui/MmsTabActivity;->ch:Z

    if-eqz v1, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->onBackPressed()V

    goto :goto_0

    .line 376
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_4
        0x7f0f00d6 -> :sswitch_2
        0x7f0f00d7 -> :sswitch_0
        0x7f0f00d8 -> :sswitch_1
        0x7f0f00d9 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0f00d8

    const v5, 0x7f0f00d7

    const v4, 0x7f0f00d6

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 339
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsTabActivity;->ch:Z

    if-eqz v0, :cond_0

    .line 340
    invoke-direct {p0, p1, v5, v3}, Lcom/android/mms/ui/MmsTabActivity;->a(Landroid/view/Menu;IZ)V

    .line 341
    invoke-direct {p0, p1, v4, v3}, Lcom/android/mms/ui/MmsTabActivity;->a(Landroid/view/Menu;IZ)V

    .line 342
    invoke-direct {p0, p1, v6, v3}, Lcom/android/mms/ui/MmsTabActivity;->a(Landroid/view/Menu;IZ)V

    .line 360
    :goto_0
    return v2

    .line 346
    :cond_0
    sget-object v0, Lcom/android/mms/ui/dt;->sJ:[I

    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->co:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 348
    :pswitch_0
    invoke-direct {p0, p1, v5, v2}, Lcom/android/mms/ui/MmsTabActivity;->a(Landroid/view/Menu;IZ)V

    .line 349
    invoke-direct {p0, p1, v4, v2}, Lcom/android/mms/ui/MmsTabActivity;->a(Landroid/view/Menu;IZ)V

    .line 350
    invoke-direct {p0, p1, v6, v2}, Lcom/android/mms/ui/MmsTabActivity;->a(Landroid/view/Menu;IZ)V

    .line 351
    const v0, 0x7f0f00d9

    invoke-direct {p0, p1, v0, v2}, Lcom/android/mms/ui/MmsTabActivity;->a(Landroid/view/Menu;IZ)V

    goto :goto_0

    .line 355
    :pswitch_1
    invoke-direct {p0, p1, v5, v3}, Lcom/android/mms/ui/MmsTabActivity;->a(Landroid/view/Menu;IZ)V

    .line 356
    invoke-direct {p0, p1, v4, v3}, Lcom/android/mms/ui/MmsTabActivity;->a(Landroid/view/Menu;IZ)V

    .line 357
    invoke-direct {p0, p1, v6, v2}, Lcom/android/mms/ui/MmsTabActivity;->a(Landroid/view/Menu;IZ)V

    goto :goto_0

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 83
    invoke-static {}, Lcom/android/mms/ui/NewMessagePopupActivity;->dismiss()V

    .line 84
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 406
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsTabActivity;->n(Z)V

    .line 407
    return v0
.end method
